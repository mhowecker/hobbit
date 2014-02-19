/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/foukas/hobbit/src/decision_service/srv/GetError.srv
 *
 */


#ifndef DECISION_SERVICE_MESSAGE_GETERRORREQUEST_H
#define DECISION_SERVICE_MESSAGE_GETERRORREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace decision_service
{
template <class ContainerAllocator>
struct GetErrorRequest_
{
  typedef GetErrorRequest_<ContainerAllocator> Type;

  GetErrorRequest_()
    : id()  {
    }
  GetErrorRequest_(const ContainerAllocator& _alloc)
    : id(_alloc)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;




  typedef boost::shared_ptr< ::decision_service::GetErrorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::decision_service::GetErrorRequest_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct GetErrorRequest_

typedef ::decision_service::GetErrorRequest_<std::allocator<void> > GetErrorRequest;

typedef boost::shared_ptr< ::decision_service::GetErrorRequest > GetErrorRequestPtr;
typedef boost::shared_ptr< ::decision_service::GetErrorRequest const> GetErrorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::decision_service::GetErrorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::decision_service::GetErrorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace decision_service

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::decision_service::GetErrorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::decision_service::GetErrorRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::decision_service::GetErrorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::decision_service::GetErrorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::decision_service::GetErrorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::decision_service::GetErrorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::decision_service::GetErrorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbfcda76036ebbe3d36caf7af80b260c";
  }

  static const char* value(const ::decision_service::GetErrorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbfcda76036ebbe3ULL;
  static const uint64_t static_value2 = 0xd36caf7af80b260cULL;
};

template<class ContainerAllocator>
struct DataType< ::decision_service::GetErrorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "decision_service/GetErrorRequest";
  }

  static const char* value(const ::decision_service::GetErrorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::decision_service::GetErrorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
string id\n\
\n\
";
  }

  static const char* value(const ::decision_service::GetErrorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::decision_service::GetErrorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct GetErrorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::decision_service::GetErrorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::decision_service::GetErrorRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DECISION_SERVICE_MESSAGE_GETERRORREQUEST_H
