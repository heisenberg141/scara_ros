// Generated by gencpp from file scara_robot_control/find_end_velRequest.msg
// DO NOT EDIT!


#ifndef SCARA_ROBOT_CONTROL_MESSAGE_FIND_END_VELREQUEST_H
#define SCARA_ROBOT_CONTROL_MESSAGE_FIND_END_VELREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace scara_robot_control
{
template <class ContainerAllocator>
struct find_end_velRequest_
{
  typedef find_end_velRequest_<ContainerAllocator> Type;

  find_end_velRequest_()
    : q1_dot(0.0)
    , q2_dot(0.0)
    , q3_dot(0.0)  {
    }
  find_end_velRequest_(const ContainerAllocator& _alloc)
    : q1_dot(0.0)
    , q2_dot(0.0)
    , q3_dot(0.0)  {
  (void)_alloc;
    }



   typedef double _q1_dot_type;
  _q1_dot_type q1_dot;

   typedef double _q2_dot_type;
  _q2_dot_type q2_dot;

   typedef double _q3_dot_type;
  _q3_dot_type q3_dot;





  typedef boost::shared_ptr< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> const> ConstPtr;

}; // struct find_end_velRequest_

typedef ::scara_robot_control::find_end_velRequest_<std::allocator<void> > find_end_velRequest;

typedef boost::shared_ptr< ::scara_robot_control::find_end_velRequest > find_end_velRequestPtr;
typedef boost::shared_ptr< ::scara_robot_control::find_end_velRequest const> find_end_velRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scara_robot_control::find_end_velRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scara_robot_control::find_end_velRequest_<ContainerAllocator1> & lhs, const ::scara_robot_control::find_end_velRequest_<ContainerAllocator2> & rhs)
{
  return lhs.q1_dot == rhs.q1_dot &&
    lhs.q2_dot == rhs.q2_dot &&
    lhs.q3_dot == rhs.q3_dot;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scara_robot_control::find_end_velRequest_<ContainerAllocator1> & lhs, const ::scara_robot_control::find_end_velRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scara_robot_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0d1296d3171dd2cc27e54b82c424f5d9";
  }

  static const char* value(const ::scara_robot_control::find_end_velRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0d1296d3171dd2ccULL;
  static const uint64_t static_value2 = 0x27e54b82c424f5d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scara_robot_control/find_end_velRequest";
  }

  static const char* value(const ::scara_robot_control::find_end_velRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 q1_dot\n"
"float64 q2_dot\n"
"float64 q3_dot\n"
;
  }

  static const char* value(const ::scara_robot_control::find_end_velRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q1_dot);
      stream.next(m.q2_dot);
      stream.next(m.q3_dot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct find_end_velRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scara_robot_control::find_end_velRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scara_robot_control::find_end_velRequest_<ContainerAllocator>& v)
  {
    s << indent << "q1_dot: ";
    Printer<double>::stream(s, indent + "  ", v.q1_dot);
    s << indent << "q2_dot: ";
    Printer<double>::stream(s, indent + "  ", v.q2_dot);
    s << indent << "q3_dot: ";
    Printer<double>::stream(s, indent + "  ", v.q3_dot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCARA_ROBOT_CONTROL_MESSAGE_FIND_END_VELREQUEST_H
