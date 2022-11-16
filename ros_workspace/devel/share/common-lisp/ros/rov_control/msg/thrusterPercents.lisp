; Auto-generated. Do not edit!


(cl:in-package rov_control-msg)


;//! \htmlinclude thrusterPercents.msg.html

(cl:defclass <thrusterPercents> (roslisp-msg-protocol:ros-message)
  ((t1
    :reader t1
    :initarg :t1
    :type cl:integer
    :initform 0)
   (t2
    :reader t2
    :initarg :t2
    :type cl:integer
    :initform 0)
   (t3
    :reader t3
    :initarg :t3
    :type cl:integer
    :initform 0)
   (t4
    :reader t4
    :initarg :t4
    :type cl:integer
    :initform 0)
   (t5
    :reader t5
    :initarg :t5
    :type cl:integer
    :initform 0)
   (t6
    :reader t6
    :initarg :t6
    :type cl:integer
    :initform 0))
)

(cl:defclass thrusterPercents (<thrusterPercents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <thrusterPercents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'thrusterPercents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_control-msg:<thrusterPercents> is deprecated: use rov_control-msg:thrusterPercents instead.")))

(cl:ensure-generic-function 't1-val :lambda-list '(m))
(cl:defmethod t1-val ((m <thrusterPercents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control-msg:t1-val is deprecated.  Use rov_control-msg:t1 instead.")
  (t1 m))

(cl:ensure-generic-function 't2-val :lambda-list '(m))
(cl:defmethod t2-val ((m <thrusterPercents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control-msg:t2-val is deprecated.  Use rov_control-msg:t2 instead.")
  (t2 m))

(cl:ensure-generic-function 't3-val :lambda-list '(m))
(cl:defmethod t3-val ((m <thrusterPercents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control-msg:t3-val is deprecated.  Use rov_control-msg:t3 instead.")
  (t3 m))

(cl:ensure-generic-function 't4-val :lambda-list '(m))
(cl:defmethod t4-val ((m <thrusterPercents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control-msg:t4-val is deprecated.  Use rov_control-msg:t4 instead.")
  (t4 m))

(cl:ensure-generic-function 't5-val :lambda-list '(m))
(cl:defmethod t5-val ((m <thrusterPercents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control-msg:t5-val is deprecated.  Use rov_control-msg:t5 instead.")
  (t5 m))

(cl:ensure-generic-function 't6-val :lambda-list '(m))
(cl:defmethod t6-val ((m <thrusterPercents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control-msg:t6-val is deprecated.  Use rov_control-msg:t6 instead.")
  (t6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <thrusterPercents>) ostream)
  "Serializes a message object of type '<thrusterPercents>"
  (cl:let* ((signed (cl:slot-value msg 't1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 't6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <thrusterPercents>) istream)
  "Deserializes a message object of type '<thrusterPercents>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 't6) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<thrusterPercents>)))
  "Returns string type for a message object of type '<thrusterPercents>"
  "rov_control/thrusterPercents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'thrusterPercents)))
  "Returns string type for a message object of type 'thrusterPercents"
  "rov_control/thrusterPercents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<thrusterPercents>)))
  "Returns md5sum for a message object of type '<thrusterPercents>"
  "860e29d4fdc02d5eacdfc57885542f75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'thrusterPercents)))
  "Returns md5sum for a message object of type 'thrusterPercents"
  "860e29d4fdc02d5eacdfc57885542f75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<thrusterPercents>)))
  "Returns full string definition for message of type '<thrusterPercents>"
  (cl:format cl:nil "int32 t1~%int32 t2~%int32 t3~%int32 t4~%int32 t5~%int32 t6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'thrusterPercents)))
  "Returns full string definition for message of type 'thrusterPercents"
  (cl:format cl:nil "int32 t1~%int32 t2~%int32 t3~%int32 t4~%int32 t5~%int32 t6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <thrusterPercents>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <thrusterPercents>))
  "Converts a ROS message object to a list"
  (cl:list 'thrusterPercents
    (cl:cons ':t1 (t1 msg))
    (cl:cons ':t2 (t2 msg))
    (cl:cons ':t3 (t3 msg))
    (cl:cons ':t4 (t4 msg))
    (cl:cons ':t5 (t5 msg))
    (cl:cons ':t6 (t6 msg))
))
