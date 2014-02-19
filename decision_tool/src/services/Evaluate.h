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
 * Auto-generated by gensrv_cpp from file /home/foukas/hobbit/src/decision_service/srv/Evaluate.srv
 *
 */


#ifndef DECISION_SERVICE_MESSAGE_EVALUATE_H
#define DECISION_SERVICE_MESSAGE_EVALUATE_H

#include <ros/service_traits.h>


#include <decision_service/EvaluateRequest.h>
#include <decision_service/EvaluateResponse.h>


namespace decision_service
{

struct Evaluate
{

typedef EvaluateRequest Request;
typedef EvaluateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Evaluate
} // namespace decision_service


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::decision_service::Evaluate > {
  static const char* value()
  {
    return "d66f43e9cc93968592d22ebf8001f3ea";
  }

  static const char* value(const ::decision_service::Evaluate&) { return value(); }
};

template<>
struct DataType< ::decision_service::Evaluate > {
  static const char* value()
  {
    return "decision_service/Evaluate";
  }

  static const char* value(const ::decision_service::Evaluate&) { return value(); }
};


// service_traits::MD5Sum< ::decision_service::EvaluateRequest> should match 
// service_traits::MD5Sum< ::decision_service::Evaluate > 
template<>
struct MD5Sum< ::decision_service::EvaluateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::decision_service::Evaluate >::value();
  }
  static const char* value(const ::decision_service::EvaluateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::decision_service::EvaluateRequest> should match 
// service_traits::DataType< ::decision_service::Evaluate > 
template<>
struct DataType< ::decision_service::EvaluateRequest>
{
  static const char* value()
  {
    return DataType< ::decision_service::Evaluate >::value();
  }
  static const char* value(const ::decision_service::EvaluateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::decision_service::EvaluateResponse> should match 
// service_traits::MD5Sum< ::decision_service::Evaluate > 
template<>
struct MD5Sum< ::decision_service::EvaluateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::decision_service::Evaluate >::value();
  }
  static const char* value(const ::decision_service::EvaluateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::decision_service::EvaluateResponse> should match 
// service_traits::DataType< ::decision_service::Evaluate > 
template<>
struct DataType< ::decision_service::EvaluateResponse>
{
  static const char* value()
  {
    return DataType< ::decision_service::Evaluate >::value();
  }
  static const char* value(const ::decision_service::EvaluateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DECISION_SERVICE_MESSAGE_EVALUATE_H
