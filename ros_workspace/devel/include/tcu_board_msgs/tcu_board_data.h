// Generated by gencpp from file tcu_board_msgs/tcu_board_data.msg
// DO NOT EDIT!


#ifndef TCU_BOARD_MSGS_MESSAGE_TCU_BOARD_DATA_H
#define TCU_BOARD_MSGS_MESSAGE_TCU_BOARD_DATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tcu_board_msgs
{
template <class ContainerAllocator>
struct tcu_board_data_
{
  typedef tcu_board_data_<ContainerAllocator> Type;

  tcu_board_data_()
    : tempC(0.0)
    , humidity(0.0)
    , currentMA(0.0)
    , voltage(0.0)  {
    }
  tcu_board_data_(const ContainerAllocator& _alloc)
    : tempC(0.0)
    , humidity(0.0)
    , currentMA(0.0)
    , voltage(0.0)  {
  (void)_alloc;
    }



   typedef float _tempC_type;
  _tempC_type tempC;

   typedef float _humidity_type;
  _humidity_type humidity;

   typedef float _currentMA_type;
  _currentMA_type currentMA;

   typedef float _voltage_type;
  _voltage_type voltage;





  typedef boost::shared_ptr< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> const> ConstPtr;

}; // struct tcu_board_data_

typedef ::tcu_board_msgs::tcu_board_data_<std::allocator<void> > tcu_board_data;

typedef boost::shared_ptr< ::tcu_board_msgs::tcu_board_data > tcu_board_dataPtr;
typedef boost::shared_ptr< ::tcu_board_msgs::tcu_board_data const> tcu_board_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator1> & lhs, const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator2> & rhs)
{
  return lhs.tempC == rhs.tempC &&
    lhs.humidity == rhs.humidity &&
    lhs.currentMA == rhs.currentMA &&
    lhs.voltage == rhs.voltage;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator1> & lhs, const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tcu_board_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bdb48909d88ffd8a6589dd5f63593bf1";
  }

  static const char* value(const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbdb48909d88ffd8aULL;
  static const uint64_t static_value2 = 0x6589dd5f63593bf1ULL;
};

template<class ContainerAllocator>
struct DataType< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tcu_board_msgs/tcu_board_data";
  }

  static const char* value(const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 tempC\n"
"float32 humidity\n"
"float32 currentMA\n"
"float32 voltage\n"
;
  }

  static const char* value(const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tempC);
      stream.next(m.humidity);
      stream.next(m.currentMA);
      stream.next(m.voltage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct tcu_board_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tcu_board_msgs::tcu_board_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tcu_board_msgs::tcu_board_data_<ContainerAllocator>& v)
  {
    s << indent << "tempC: ";
    Printer<float>::stream(s, indent + "  ", v.tempC);
    s << indent << "humidity: ";
    Printer<float>::stream(s, indent + "  ", v.humidity);
    s << indent << "currentMA: ";
    Printer<float>::stream(s, indent + "  ", v.currentMA);
    s << indent << "voltage: ";
    Printer<float>::stream(s, indent + "  ", v.voltage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TCU_BOARD_MSGS_MESSAGE_TCU_BOARD_DATA_H
