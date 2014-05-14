#include <interfaces_mira/MiraSendingGoals.h>

#include <navigation/Task.h>
#include <navigation/tasks/OrientationTask.h>
#include <navigation/tasks/PreferredDirectionTask.h>
#include <navigation/tasks/PositionTask.h>

#include <string>


using namespace mira::navigation;

MiraSendingGoals::MiraSendingGoals() : MiraRobotModule(std::string ("SendingGoal")), as_(NULL) {
}

void MiraSendingGoals::initialize() {
        
  goal_pose_subscriber = robot_->getRosNode().subscribe(GOAL_POSE, 1000, &MiraSendingGoals::goal_pose_callback, this);
  stop_sub = robot_->getRosNode().subscribe(STOP_REQUEST, 2, &MiraSendingGoals::stop_request_callback, this);

  goal_status_pub = robot_->getRosNode().advertise<std_msgs::String>(GOAL_STATUS, 20);

  robot_->getMiraAuthority().subscribe<std::string>("/navigation/PilotEvent", &MiraSendingGoals::goal_status_channel_callback, this);

  goal_status.data = "idle";
  goal_status_pub.publish(goal_status);


  as_ = new actionlib::SimpleActionServer<interfaces_mira::MiraSendingGoalsAction>(robot_->getRosNode(), "mira_sending_goals", boost::bind(&MiraSendingGoals::executeCb, this, _1), false);

}

void MiraSendingGoals::spin() 
{
	// ros::spin();
	ros::Rate r(10);  //10 Hz
	while (ros::ok()) 
	{
		ros::spinOnce();
		r.sleep();
		goal_status_pub.publish(goal_status);
	}
}

void MiraSendingGoals::goal_status_channel_callback(mira::ChannelRead<std::string> data) 
{
	//std::cout << "goal_status " << data->value().c_str() << std::endl;
        if(data->value() == "Idle") 
	{
		goal_status.data = "idle";
		goal_status_pub.publish(goal_status);
	}
	if(data->value() == "PlanAndDrive") 
	{
  		goal_status.data = "active";
		goal_status_pub.publish(goal_status);
	}
	if(data->value() =="GoalReached") 
	{
		goal_status.data = "reached";
		std::cout << "Goal reached " << std::endl;
		goal_status_pub.publish(goal_status);
	}
	if(data->value() == "PathTemporarilyLost") 
	{
		goal_status.data = "preempted";
		std::cout << "Goal preempted " << std::endl;
		goal_status_pub.publish(goal_status);
	}
	if(data->value() == "NoPathPlannable" || data->value().c_str() == "NoValidMotionCommand")
	{
		goal_status.data = "aborted";
		std::cout << "Goal aborted " << std::endl;
		goal_status_pub.publish(goal_status);

	}
	if(data->value() == "NoData")
	{
		goal_status.data = "aborted";
		std::cout << "Goal aborted " << std::endl;
		goal_status_pub.publish(goal_status);

	}


}

void MiraSendingGoals::goal_pose_callback(const hobbit_msgs::Pose2DStamped::ConstPtr& goal_pose) 
{

	TaskPtr task(new Task());
	task->addSubTask(SubTaskPtr(new PreferredDirectionTask(mira::navigation::PreferredDirectionTask::FORWARD, 1.0f)));
        task->addSubTask(SubTaskPtr(new mira::navigation::PositionTask(mira::Point2f(goal_pose->x, goal_pose->y), 0.1f, 0.1f)));
	task->addSubTask(mira::navigation::SubTaskPtr(new mira::navigation::OrientationTask(goal_pose->theta, mira::deg2rad(15.0f))));

	std::string navService = robot_->getMiraAuthority().waitForServiceInterface("INavigation");
	robot_->getMiraAuthority().callService<void>(navService, "setTask", task);

}

void MiraSendingGoals::stop_request_callback(const std_msgs::String::ConstPtr& msg)
{
	if (msg->data.compare("stop") || msg->data.compare("Stop") || msg->data.compare("STOP"))
	{
		TaskPtr task(new Task());
		//cancel the task
		std::string navService = robot_->getMiraAuthority().waitForServiceInterface("INavigation");
  		robot_->getMiraAuthority().callService<void>(navService, "setTask", task);

		goal_status.data = "cancelled";
		std::cout << "Goal cancelled " << std::endl;
		goal_status_pub.publish(goal_status);
	}

}

void MiraSendingGoals::executeCb(const interfaces_mira::MiraSendingGoalsGoalConstPtr& goal_pose)
{

    if(!isQuaternionValid(goal_pose->target_pose.pose.orientation))
    {
      as_->setAborted(interfaces_mira::MiraSendingGoalsResult(), "Aborting on goal because it was sent with an invalid quaternion");
      return;
    }

    geometry_msgs::PoseStamped goal = goal_pose->target_pose; //should be in global reference frame already!!

    ros::NodeHandle n = robot_->getRosNode();
    while(n.ok())
    {

      if(as_->isPreemptRequested())
      {
        if(as_->isNewGoalAvailable())
	{
          //if we're active and a new goal is available, we'll accept it, but we won't shut anything down
          interfaces_mira::MiraSendingGoalsGoal new_goal = *as_->acceptNewGoal();

          if(!isQuaternionValid(new_goal.target_pose.pose.orientation))
	  {
            as_->setAborted(interfaces_mira::MiraSendingGoalsResult(), "Aborting on goal because it was sent with an invalid quaternion");
            return;
          }

          goal = new_goal.target_pose;

          //we'll make sure that we reset our state for the next execution cycle
          //recovery_index_ = 0;
          //state_ = PLANNING;

          //we have a new goal so make sure the planner is awake
          TaskPtr task(new Task());
	  task->addSubTask(SubTaskPtr(new PreferredDirectionTask(mira::navigation::PreferredDirectionTask::FORWARD, 1.0f)));
          task->addSubTask(SubTaskPtr(new mira::navigation::PositionTask(mira::Point2f(goal.pose.position.x, goal.pose.position.y), 0.1f, 0.1f)));
	  task->addSubTask(mira::navigation::SubTaskPtr(new mira::navigation::OrientationTask(tf::getYaw(goal.pose.orientation), mira::deg2rad(15.0f))));

	  std::string navService = robot_->getMiraAuthority().waitForServiceInterface("INavigation");
	  robot_->getMiraAuthority().callService<void>(navService, "setTask", task);
          

        }
        else 
	{

          //notify the ActionServer that we've successfully preempted
          ROS_DEBUG_NAMED("interfaces_mira","preempting the current goal");
          as_->setPreempted();

           //we'll actually return from execute after preempting
          return;
        }
      }

     bool done = false;
     if (goal_status.data == "reached") done=true;

     if(done)
        return;
   }


   //if the node is killed then we'll abort and return
    as_->setAborted(interfaces_mira::MiraSendingGoalsResult(), "Aborting on the goal because the node has been killed");
    return;


}


bool MiraSendingGoals::isQuaternionValid(const geometry_msgs::Quaternion& q)  //copied from ros move_base
{
    //first we need to check if the quaternion has nan's or infs
    if(!std::isfinite(q.x) || !std::isfinite(q.y) || !std::isfinite(q.z) || !std::isfinite(q.w)){
      ROS_ERROR("Quaternion has nans or infs... discarding as a navigation goal");
      return false;
    }

    tf::Quaternion tf_q(q.x, q.y, q.z, q.w);

    //next, we need to check if the length of the quaternion is close to zero
    if(tf_q.length2() < 1e-6){
      ROS_ERROR("Quaternion has length close to zero... discarding as navigation goal");
      return false;
    }

    //next, we'll normalize the quaternion and check that it transforms the vertical vector correctly //FIXME
    /*tf_q.normalize();

    btVector3 up(0, 0, 1);

    double dot = up.dot(up.rotate(tf_q.getAxis(), tf_q.getAngle()));

    if(fabs(dot - 1) > 1e-3){
      ROS_ERROR("Quaternion is invalid... for navigation the z-axis of the quaternion must be close to vertical.");
      return false;
    }*/

    return true;


}






