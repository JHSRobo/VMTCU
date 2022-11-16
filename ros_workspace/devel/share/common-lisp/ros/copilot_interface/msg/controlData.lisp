; Auto-generated. Do not edit!


(cl:in-package copilot_interface-msg)


;//! \htmlinclude controlData.msg.html

(cl:defclass <controlData> (roslisp-msg-protocol:ros-message)
  ((thruster_status
    :reader thruster_status
    :initarg :thruster_status
    :type cl:boolean
    :initform cl:nil)
   (dh_status
    :reader dh_status
    :initarg :dh_status
    :type cl:boolean
    :initform cl:nil)
   (target_depth
    :reader target_depth
    :initarg :target_depth
    :type cl:float
    :initform 0.0)
   (linear_sense
    :reader linear_sense
    :initarg :linear_sense
    :type cl:float
    :initform 0.0)
   (angular_sense
    :reader angular_sense
    :initarg :angular_sense
    :type cl:float
    :initform 0.0)
   (vertical_sense
    :reader vertical_sense
    :initarg :vertical_sense
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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name copilot_interface-msg:<controlData> is deprecated: use copilot_interface-msg:controlData instead.")))

(cl:ensure-generic-function 'thruster_status-val :lambda-list '(m))
(cl:defmethod thruster_status-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:thruster_status-val is deprecated.  Use copilot_interface-msg:thruster_status instead.")
  (thruster_status m))

(cl:ensure-generic-function 'dh_status-val :lambda-list '(m))
(cl:defmethod dh_status-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:dh_status-val is deprecated.  Use copilot_interface-msg:dh_status instead.")
  (dh_status m))

(cl:ensure-generic-function 'target_depth-val :lambda-list '(m))
(cl:defmethod target_depth-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:target_depth-val is deprecated.  Use copilot_interface-msg:target_depth instead.")
  (target_depth m))

(cl:ensure-generic-function 'linear_sense-val :lambda-list '(m))
(cl:defmethod linear_sense-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:linear_sense-val is deprecated.  Use copilot_interface-msg:linear_sense instead.")
  (linear_sense m))

(cl:ensure-generic-function 'angular_sense-val :lambda-list '(m))
(cl:defmethod angular_sense-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:angular_sense-val is deprecated.  Use copilot_interface-msg:angular_sense instead.")
  (angular_sense m))

(cl:ensure-generic-function 'vertical_sense-val :lambda-list '(m))
(cl:defmethod vertical_sense-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:vertical_sense-val is deprecated.  Use copilot_interface-msg:vertical_sense instead.")
  (vertical_sense m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <controlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader copilot_interface-msg:camera-val is deprecated.  Use copilot_interface-msg:camera instead.")
  (camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controlData>) ostream)
  "Serializes a message object of type '<controlData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'thruster_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dh_status) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_sense))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_sense))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vertical_sense))))
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
    (cl:setf (cl:slot-value msg 'thruster_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dh_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_sense) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_sense) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_sense) (roslisp-utils:decode-single-float-bits bits)))
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
  "copilot_interface/controlData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controlData)))
  "Returns string type for a message object of type 'controlData"
  "copilot_interface/controlData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controlData>)))
  "Returns md5sum for a message object of type '<controlData>"
  "63fc1b5d7859e5a1c46030e539babe05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controlData)))
  "Returns md5sum for a message object of type 'controlData"
  "63fc1b5d7859e5a1c46030e539babe05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controlData>)))
  "Returns full string definition for message of type '<controlData>"
  (cl:format cl:nil "bool thruster_status~%bool dh_status~%float32 target_depth~%float32 linear_sense~%float32 angular_sense~%float32 vertical_sense~%int32 camera~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controlData)))
  "Returns full string definition for message of type 'controlData"
  (cl:format cl:nil "bool thruster_status~%bool dh_status~%float32 target_depth~%float32 linear_sense~%float32 angular_sense~%float32 vertical_sense~%int32 camera~%~%"))
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
    (cl:cons ':thruster_status (thruster_status msg))
    (cl:cons ':dh_status (dh_status msg))
    (cl:cons ':target_depth (target_depth msg))
    (cl:cons ':linear_sense (linear_sense msg))
    (cl:cons ':angular_sense (angular_sense msg))
    (cl:cons ':vertical_sense (vertical_sense msg))
    (cl:cons ':camera (camera msg))
))
