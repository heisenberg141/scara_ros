// Generated by gencpp from file scara_robot_control/find_end_velResponse.msg
// DO NOT EDIT!


#ifndef SCARA_ROBOT_CONTROL_MESSAGE_FIND_END_VELRESPONSE_H
#define SCARA_ROBOT_CONTROL_MESSAGE_FIND_END_VELRESPONSE_H


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
struct find_end_velResponse_
{
  typedef find_end_velResponse_<ContainerAllocator> Type;

  find_end_velResponse_()
    : vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , wx(0.0)
    , wy(0.0)
    , wz(0.0)  {
    }
  find_end_velResponse_(const ContainerAllocator& _alloc)
    : vx(0.0)
    , vy(0.0)
    , vz(0.0)
    , wx(0.0)
    , wy(0.0)
    , wz(0.0)  {
  (void)_alloc;
    }



   typedef double _vx_type;
  _vx_type vx;

   typedef double _vy_type;
  _vy_type vy;

   typedef double _vz_type;
  _vz_type vz;

   typedef double _wx_type;
  _wx_type wx;

   typedef double _wy_type;
  _wy_type wy;

   typedef double _wz_type;
  _wz_type wz;





  typedef boost::shared_ptr< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> const> ConstPtr;

}; // struct find_end_velResponse_

typedef ::scara_robot_control::find_end_velResponse_<std::allocator<void> > find_end_velResponse;

typedef boost::shared_ptr< ::scara_robot_control::find_end_velResponse > find_end_velResponsePtr;
typedef boost::shared_ptr< ::scara_robot_control::find_end_velResponse const> find_end_velResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scara_robot_control::find_end_velResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scara_robot_control::find_end_velResponse_<ContainerAllocator1> & lhs, const ::scara_robot_control::find_end_velResponse_<ContainerAllocator2> & rhs)
{
  return lhs.vx == rhs.vx &&
    lhs.vy == rhs.vy &&
    lhs.vz == rhs.vz &&
    lhs.wx == rhs.wx &&
    lhs.wy == rhs.wy &&
    lhs.wz == rhs.wz;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scara_robot_control::find_end_velResponse_<ContainerAllocator1> & lhs, const ::scara_robot_control::find_end_velResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scara_robot_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8848441b29a1bf8fd222cf62b36aa991";
  }

  static const char* value(const ::scara_robot_control::find_end_velResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8848441b29a1bf8fULL;
  static const uint64_t static_value2 = 0xd222cf62b36aa991ULL;
};

template<class ContainerAllocator>
struct DataType< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scara_robot_control/find_end_velResponse";
  }

  static const char* value(const ::scara_robot_control::find_end_velResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 vx\n"
"float64 vy\n"
"float64 vz\n"
"float64 wx\n"
"float64 wy\n"
"float64 wz\n"
" \n"
"\n"
;
  }

  static const char* value(const ::scara_robot_control::find_end_velResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vx);
      stream.next(m.vy);
      stream.next(m.vz);
      stream.next(m.wx);
      stream.next(m.wy);
      stream.next(m.wz);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct find_end_velResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scara_robot_control::find_end_velResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scara_robot_control::find_end_velResponse_<ContainerAllocator>& v)
  {
    s << indent << "vx: ";
    Printer<double>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<double>::stream(s, indent + "  ", v.vy);
    s << indent << "vz: ";
    Printer<double>::stream(s, indent + "  ", v.vz);
    s << indent << "wx: ";
    Printer<double>::stream(s, indent + "  ", v.wx);
    s << indent << "wy: ";
    Printer<double>::stream(s, indent + "  ", v.wy);
    s << indent << "wz: ";
    Printer<double>::stream(s, indent + "  ", v.wz);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCARA_ROBOT_CONTROL_MESSAGE_FIND_END_VELRESPONSE_H