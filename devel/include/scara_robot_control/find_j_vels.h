// Generated by gencpp from file scara_robot_control/find_j_vels.msg
// DO NOT EDIT!


#ifndef SCARA_ROBOT_CONTROL_MESSAGE_FIND_J_VELS_H
#define SCARA_ROBOT_CONTROL_MESSAGE_FIND_J_VELS_H

#include <ros/service_traits.h>


#include <scara_robot_control/find_j_velsRequest.h>
#include <scara_robot_control/find_j_velsResponse.h>


namespace scara_robot_control
{

struct find_j_vels
{

typedef find_j_velsRequest Request;
typedef find_j_velsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct find_j_vels
} // namespace scara_robot_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scara_robot_control::find_j_vels > {
  static const char* value()
  {
    return "cd20452eba578a523525eab281dd96c5";
  }

  static const char* value(const ::scara_robot_control::find_j_vels&) { return value(); }
};

template<>
struct DataType< ::scara_robot_control::find_j_vels > {
  static const char* value()
  {
    return "scara_robot_control/find_j_vels";
  }

  static const char* value(const ::scara_robot_control::find_j_vels&) { return value(); }
};


// service_traits::MD5Sum< ::scara_robot_control::find_j_velsRequest> should match
// service_traits::MD5Sum< ::scara_robot_control::find_j_vels >
template<>
struct MD5Sum< ::scara_robot_control::find_j_velsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scara_robot_control::find_j_vels >::value();
  }
  static const char* value(const ::scara_robot_control::find_j_velsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_robot_control::find_j_velsRequest> should match
// service_traits::DataType< ::scara_robot_control::find_j_vels >
template<>
struct DataType< ::scara_robot_control::find_j_velsRequest>
{
  static const char* value()
  {
    return DataType< ::scara_robot_control::find_j_vels >::value();
  }
  static const char* value(const ::scara_robot_control::find_j_velsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scara_robot_control::find_j_velsResponse> should match
// service_traits::MD5Sum< ::scara_robot_control::find_j_vels >
template<>
struct MD5Sum< ::scara_robot_control::find_j_velsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scara_robot_control::find_j_vels >::value();
  }
  static const char* value(const ::scara_robot_control::find_j_velsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_robot_control::find_j_velsResponse> should match
// service_traits::DataType< ::scara_robot_control::find_j_vels >
template<>
struct DataType< ::scara_robot_control::find_j_velsResponse>
{
  static const char* value()
  {
    return DataType< ::scara_robot_control::find_j_vels >::value();
  }
  static const char* value(const ::scara_robot_control::find_j_velsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCARA_ROBOT_CONTROL_MESSAGE_FIND_J_VELS_H
