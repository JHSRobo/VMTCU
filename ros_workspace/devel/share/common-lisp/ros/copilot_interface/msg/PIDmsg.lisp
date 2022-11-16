; Auto-generated. Do not edit!


(cl:in-package copilot_interface-msg)


;//! \htmlinclude PIDmsg.msg.html

(cl:defclass <PIDmsg> (roslisp-msg-protocol:ros-message)
  ((p
    :reader p
    :initarg :p
    :type cl:float
    :initform 0.0)
   (i
    :reader i
    :initarg :i
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0))
)

(cl:defclass PIDmsg (<PIDmsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIDmsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIDmsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name copilot_interface-msg:<PIDmsg> is deprecated: use copilot_interface-msg:PIDmsg instead.")))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <PIDmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:p-val is deprecated.  Use copilot_interface-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'i-val :lambda-list '(m))
(cl:defmethod i-val ((m <PIDmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:i-val is deprecated.  Use copilot_interface-msg:i instead.")
  (i m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <PIDmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:d-val is deprecated.  Use copilot_interface-msg:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIDmsg>) ostream)
  "Serializes a message object of type '<PIDmsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIDmsg>) istream)
  "Deserializes a message object of type '<PIDmsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIDmsg>)))
  "Returns string type for a message object of type '<PIDmsg>"
  "copilot_interface/PIDmsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDmsg)))
  "Returns string type for a message object of type 'PIDmsg"
  "copilot_interface/PIDmsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIDmsg>)))
  "Returns md5sum for a message object of type '<PIDmsg>"
  "cccd09188ee638c943ed6be95f1812c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIDmsg)))
  "Returns md5sum for a message object of type 'PIDmsg"
  "cccd09188ee638c943ed6be95f1812c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIDmsg>)))
  "Returns full string definition for message of type '<PIDmsg>"
  (cl:format cl:nil "float32 p~%float32 i~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIDmsg)))
  "Returns full string definition for message of type 'PIDmsg"
  (cl:format cl:nil "float32 p~%float32 i~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIDmsg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIDmsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PIDmsg
    (cl:cons ':p (p msg))
    (cl:cons ':i (i msg))
    (cl:cons ':d (d msg))
))
