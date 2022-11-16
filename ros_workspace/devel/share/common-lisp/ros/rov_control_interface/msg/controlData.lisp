; Auto-generated. Do not edit!


(cl:in-package rov_control_interface-msg)


;//! \htmlinclude controlData.msg.html

(cl:defclass <controlData> (roslisp-msg-protocol:ros-message)
  ((thrusterStatus
    :reader thrusterStatus
    :initarg :thrusterStatus
    :type cl:boolean
    :initform cl:nil)
   (dhStatus
    :reader dhStatus
    :initarg :dhStatus
    :type cl:boolean
    :initform cl:nil)
   (targetDepth
    :reader targetDepth
    :initarg :targetDepth
    :type cl:float
    :initform 0.0)
   (linearSense
    :reader linearSense
    :initarg :linearSense
    :type cl:float
    :initform 0.0)
   (angularSense
    :reader angularSense
    :initarg :angularSense
    :type cl:float
    :initform 0.0)
   (verticalSense
    :reader verticalSense
    :initarg :verticalSense
    :type cl:float
    :initform 0.0)
   (camera
    :reader camera
    :initarg :camera
    :type cl:integer
    :initform 0))
)

(cl:defclass controlData (<controlData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controlData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controlData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_control_interface-msg:<controlData> is deprecated: use rov_control_interface-msg:controlData instead.")))

(cl:ensure-generic-function 'thrusterStatus-val :lambda-list '(m))
(cl:defmethod thrusterStatus-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control_interface-msg:thrusterStatus-val is deprecated.  Use rov_control_interface-msg:thrusterStatus instead.")
  (thrusterStatus m))

(cl:ensure-generic-function 'dhStatus-val :lambda-list '(m))
(cl:defmethod dhStatus-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control_interface-msg:dhStatus-val is deprecated.  Use rov_control_interface-msg:dhStatus instead.")
  (dhStatus m))

(cl:ensure-generic-function 'targetDepth-val :lambda-list '(m))
(cl:defmethod targetDepth-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control_interface-msg:targetDepth-val is deprecated.  Use rov_control_interface-msg:targetDepth instead.")
  (targetDepth m))

(cl:ensure-generic-function 'linearSense-val :lambda-list '(m))
(cl:defmethod linearSense-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control_interface-msg:linearSense-val is deprecated.  Use rov_control_interface-msg:linearSense instead.")
  (linearSense m))

(cl:ensure-generic-function 'angularSense-val :lambda-list '(m))
(cl:defmethod angularSense-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control_interface-msg:angularSense-val is deprecated.  Use rov_control_interface-msg:angularSense instead.")
  (angularSense m))

(cl:ensure-generic-function 'verticalSense-val :lambda-list '(m))
(cl:defmethod verticalSense-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control_interface-msg:verticalSense-val is deprecated.  Use rov_control_interface-msg:verticalSense instead.")
  (verticalSense m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_control_interface-msg:camera-val is deprecated.  Use rov_control_interface-msg:camera instead.")
  (camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controlData>) ostream)
  "Serializes a message object of type '<controlData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'thrusterStatus) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dhStatus) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetDepth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linearSense))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angularSense))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'verticalSense))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'camera)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controlData>) istream)
  "Deserializes a message object of type '<controlData>"
    (cl:setf (cl:slot-value msg 'thrusterStatus) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dhStatus) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetDepth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linearSense) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angularSense) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'verticalSense) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controlData>)))
  "Returns string type for a message object of type '<controlData>"
  "rov_control_interface/controlData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controlData)))
  "Returns string type for a message object of type 'controlData"
  "rov_control_interface/controlData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controlData>)))
  "Returns md5sum for a message object of type '<controlData>"
  "b57ae0c64bce85cd8b603507396376d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controlData)))
  "Returns md5sum for a message object of type 'controlData"
  "b57ae0c64bce85cd8b603507396376d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controlData>)))
  "Returns full string definition for message of type '<controlData>"
  (cl:format cl:nil "bool thrusterStatus~%bool dhStatus~%float32 targetDepth~%float32 linearSense~%float32 angularSense~%float32 verticalSense~%int32 camera~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controlData)))
  "Returns full string definition for message of type 'controlData"
  (cl:format cl:nil "bool thrusterStatus~%bool dhStatus~%float32 targetDepth~%float32 linearSense~%float32 angularSense~%float32 verticalSense~%int32 camera~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controlData>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controlData>))
  "Converts a ROS message object to a list"
  (cl:list 'controlData
    (cl:cons ':thrusterStatus (thrusterStatus msg))
    (cl:cons ':dhStatus (dhStatus msg))
    (cl:cons ':targetDepth (targetDepth msg))
    (cl:cons ':linearSense (linearSense msg))
    (cl:cons ':angularSense (angularSense msg))
    (cl:cons ':verticalSense (verticalSense msg))
    (cl:cons ':camera (camera msg))
))
