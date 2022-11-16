; Auto-generated. Do not edit!


(cl:in-package keyboard_teleop-msg)


;//! \htmlinclude Sense.msg.html

(cl:defclass <Sense> (roslisp-msg-protocol:ros-message)
  ((l_scale
    :reader l_scale
    :initarg :l_scale
    :type cl:float
    :initform 0.0)
   (a_scale
    :reader a_scale
    :initarg :a_scale
    :type cl:float
    :initform 0.0)
   (v_scale
    :reader v_scale
    :initarg :v_scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass Sense (<Sense>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sense>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sense)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name keyboard_teleop-msg:<Sense> is deprecated: use keyboard_teleop-msg:Sense instead.")))

(cl:ensure-generic-function 'l_scale-val :lambda-list '(m))
(cl:defmethod l_scale-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader keyboard_teleop-msg:l_scale-val is deprecated.  Use keyboard_teleop-msg:l_scale instead.")
  (l_scale m))

(cl:ensure-generic-function 'a_scale-val :lambda-list '(m))
(cl:defmethod a_scale-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader keyboard_teleop-msg:a_scale-val is deprecated.  Use keyboard_teleop-msg:a_scale instead.")
  (a_scale m))

(cl:ensure-generic-function 'v_scale-val :lambda-list '(m))
(cl:defmethod v_scale-val ((m <Sense>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader keyboard_teleop-msg:v_scale-val is deprecated.  Use keyboard_teleop-msg:v_scale instead.")
  (v_scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sense>) ostream)
  "Serializes a message object of type '<Sense>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'l_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sense>) istream)
  "Deserializes a message object of type '<Sense>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_scale) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_scale) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sense>)))
  "Returns string type for a message object of type '<Sense>"
  "keyboard_teleop/Sense")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sense)))
  "Returns string type for a message object of type 'Sense"
  "keyboard_teleop/Sense")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sense>)))
  "Returns md5sum for a message object of type '<Sense>"
  "00b658ca86463c93197e8e9aac68e5df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sense)))
  "Returns md5sum for a message object of type 'Sense"
  "00b658ca86463c93197e8e9aac68e5df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sense>)))
  "Returns full string definition for message of type '<Sense>"
  (cl:format cl:nil "~%~%float64 l_scale~%float64 a_scale~%float64 v_scale~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sense)))
  "Returns full string definition for message of type 'Sense"
  (cl:format cl:nil "~%~%float64 l_scale~%float64 a_scale~%float64 v_scale~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sense>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sense>))
  "Converts a ROS message object to a list"
  (cl:list 'Sense
    (cl:cons ':l_scale (l_scale msg))
    (cl:cons ':a_scale (a_scale msg))
    (cl:cons ':v_scale (v_scale msg))
))
