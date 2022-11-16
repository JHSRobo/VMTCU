;; Auto-generated. Do not edit!


(when (boundp 'rov_control_interface::controlData)
  (if (not (find-package "ROV_CONTROL_INTERFACE"))
    (make-package "ROV_CONTROL_INTERFACE"))
  (shadow 'controlData (find-package "ROV_CONTROL_INTERFACE")))
(unless (find-package "ROV_CONTROL_INTERFACE::CONTROLDATA")
  (make-package "ROV_CONTROL_INTERFACE::CONTROLDATA"))

(in-package "ROS")
;;//! \htmlinclude controlData.msg.html


(defclass rov_control_interface::controlData
  :super ros::object
  :slots (_thrusterStatus _dhStatus _targetDepth _linearSense _angularSense _verticalSense _camera ))

(defmethod rov_control_interface::controlData
  (:init
   (&key
    ((:thrusterStatus __thrusterStatus) nil)
    ((:dhStatus __dhStatus) nil)
    ((:targetDepth __targetDepth) 0.0)
    ((:linearSense __linearSense) 0.0)
    ((:angularSense __angularSense) 0.0)
    ((:verticalSense __verticalSense) 0.0)
    ((:camera __camera) 0)
    )
   (send-super :init)
   (setq _thrusterStatus __thrusterStatus)
   (setq _dhStatus __dhStatus)
   (setq _targetDepth (float __targetDepth))
   (setq _linearSense (float __linearSense))
   (setq _angularSense (float __angularSense))
   (setq _verticalSense (float __verticalSense))
   (setq _camera (round __camera))
   self)
  (:thrusterStatus
   (&optional (__thrusterStatus :null))
   (if (not (eq __thrusterStatus :null)) (setq _thrusterStatus __thrusterStatus)) _thrusterStatus)
  (:dhStatus
   (&optional (__dhStatus :null))
   (if (not (eq __dhStatus :null)) (setq _dhStatus __dhStatus)) _dhStatus)
  (:targetDepth
   (&optional __targetDepth)
   (if __targetDepth (setq _targetDepth __targetDepth)) _targetDepth)
  (:linearSense
   (&optional __linearSense)
   (if __linearSense (setq _linearSense __linearSense)) _linearSense)
  (:angularSense
   (&optional __angularSense)
   (if __angularSense (setq _angularSense __angularSense)) _angularSense)
  (:verticalSense
   (&optional __verticalSense)
   (if __verticalSense (setq _verticalSense __verticalSense)) _verticalSense)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:serialization-length
   ()
   (+
    ;; bool _thrusterStatus
    1
    ;; bool _dhStatus
    1
    ;; float32 _targetDepth
    4
    ;; float32 _linearSense
    4
    ;; float32 _angularSense
    4
    ;; float32 _verticalSense
    4
    ;; int32 _camera
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _thrusterStatus
       (if _thrusterStatus (write-byte -1 s) (write-byte 0 s))
     ;; bool _dhStatus
       (if _dhStatus (write-byte -1 s) (write-byte 0 s))
     ;; float32 _targetDepth
       (sys::poke _targetDepth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linearSense
       (sys::poke _linearSense (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angularSense
       (sys::poke _angularSense (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _verticalSense
       (sys::poke _verticalSense (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _camera
       (write-long _camera s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _thrusterStatus
     (setq _thrusterStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dhStatus
     (setq _dhStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _targetDepth
     (setq _targetDepth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linearSense
     (setq _linearSense (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angularSense
     (setq _angularSense (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _verticalSense
     (setq _verticalSense (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _camera
     (setq _camera (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rov_control_interface::controlData :md5sum-) "b57ae0c64bce85cd8b603507396376d2")
(setf (get rov_control_interface::controlData :datatype-) "rov_control_interface/controlData")
(setf (get rov_control_interface::controlData :definition-)
      "bool thrusterStatus
bool dhStatus
float32 targetDepth
float32 linearSense
float32 angularSense
float32 verticalSense
int32 camera
")



(provide :rov_control_interface/controlData "b57ae0c64bce85cd8b603507396376d2")


