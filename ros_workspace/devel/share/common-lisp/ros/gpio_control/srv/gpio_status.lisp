; Auto-generated. Do not edit!


(cl:in-package gpio_control-srv)


;//! \htmlinclude gpio_status-request.msg.html

(cl:defclass <gpio_status-request> (roslisp-msg-protocol:ros-message)
  ((gpioNum
    :reader gpioNum
    :initarg :gpioNum
    :type cl:integer
    :initform 0))
)

(cl:defclass gpio_status-request (<gpio_status-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpio_status-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpio_status-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gpio_control-srv:<gpio_status-request> is deprecated: use gpio_control-srv:gpio_status-request instead.")))

(cl:ensure-generic-function 'gpioNum-val :lambda-list '(m))
(cl:defmethod gpioNum-val ((m <gpio_status-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpio_control-srv:gpioNum-val is deprecated.  Use gpio_control-srv:gpioNum instead.")
  (gpioNum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpio_status-request>) ostream)
  "Serializes a message object of type '<gpio_status-request>"
  (cl:let* ((signed (cl:slot-value msg 'gpioNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpio_status-request>) istream)
  "Deserializes a message object of type '<gpio_status-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gpioNum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpio_status-request>)))
  "Returns string type for a service object of type '<gpio_status-request>"
  "gpio_control/gpio_statusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpio_status-request)))
  "Returns string type for a service object of type 'gpio_status-request"
  "gpio_control/gpio_statusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpio_status-request>)))
  "Returns md5sum for a message object of type '<gpio_status-request>"
  "3b90914d035160dc78631aed0a7b703d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpio_status-request)))
  "Returns md5sum for a message object of type 'gpio_status-request"
  "3b90914d035160dc78631aed0a7b703d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpio_status-request>)))
  "Returns full string definition for message of type '<gpio_status-request>"
  (cl:format cl:nil "int64 gpioNum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpio_status-request)))
  "Returns full string definition for message of type 'gpio_status-request"
  (cl:format cl:nil "int64 gpioNum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpio_status-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpio_status-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gpio_status-request
    (cl:cons ':gpioNum (gpioNum msg))
))
;//! \htmlinclude gpio_status-response.msg.html

(cl:defclass <gpio_status-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass gpio_status-response (<gpio_status-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpio_status-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpio_status-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gpio_control-srv:<gpio_status-response> is deprecated: use gpio_control-srv:gpio_status-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <gpio_status-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gpio_control-srv:status-val is deprecated.  Use gpio_control-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpio_status-response>) ostream)
  "Serializes a message object of type '<gpio_status-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpio_status-response>) istream)
  "Deserializes a message object of type '<gpio_status-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpio_status-response>)))
  "Returns string type for a service object of type '<gpio_status-response>"
  "gpio_control/gpio_statusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpio_status-response)))
  "Returns string type for a service object of type 'gpio_status-response"
  "gpio_control/gpio_statusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpio_status-response>)))
  "Returns md5sum for a message object of type '<gpio_status-response>"
  "3b90914d035160dc78631aed0a7b703d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpio_status-response)))
  "Returns md5sum for a message object of type 'gpio_status-response"
  "3b90914d035160dc78631aed0a7b703d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpio_status-response>)))
  "Returns full string definition for message of type '<gpio_status-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpio_status-response)))
  "Returns full string definition for message of type 'gpio_status-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpio_status-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpio_status-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gpio_status-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gpio_status)))
  'gpio_status-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gpio_status)))
  'gpio_status-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpio_status)))
  "Returns string type for a service object of type '<gpio_status>"
  "gpio_control/gpio_status")