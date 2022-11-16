;; Auto-generated. Do not edit!


(when (boundp 'copilot_interface::controlData)
  (if (not (find-package "COPILOT_INTERFACE"))
    (make-package "COPILOT_INTERFACE"))
  (shadow 'controlData (find-package "COPILOT_INTERFACE")))
(unless (find-package "COPILOT_INTERFACE::CONTROLDATA")
  (make-package "COPILOT_INTERFACE::CONTROLDATA"))

(in-package "ROS")
;;//! \htmlinclude controlData.msg.html


(defclass copilot_interface::controlData
  :super ros::object
  :slots (_thruster_status _dh_status _target_depth _linear_sense _angular_sense _vertical_sense _camera ))

(defmethod copilot_interface::controlData
  (:init
   (&key
    ((:thruster_status __thruster_status) nil)
    ((:dh_status __dh_status) nil)
    ((:target_depth __target_depth) 0.0)
    ((:linear_sense __linear_sense) 0.0)
    ((:angular_sense __angular_sense) 0.0)
    ((:vertical_sense __vertical_sense) 0.0)
    ((:camera __camera) 0)
    )
   (send-super :init)
   (setq _thruster_status __thruster_status)
   (setq _dh_status __dh_status)
   (setq _target_depth (float __target_depth))
   (setq _linear_sense (float __linear_sense))
   (setq _angular_sense (float __angular_sense))
   (setq _vertical_sense (float __vertical_sense))
   (setq _camera (round __camera))
   self)
  (:thruster_status
   (&optional (__thruster_status :null))
   (if (not (eq __thruster_status :null)) (setq _thruster_status __thruster_status)) _thruster_status)
  (:dh_status
   (&optional (__dh_status :null))
   (if (not (eq __dh_status :null)) (setq _dh_status __dh_status)) _dh_status)
  (:target_depth
   (&optional __target_depth)
   (if __target_depth (setq _target_depth __target_depth)) _target_depth)
  (:linear_sense
   (&optional __linear_sense)
   (if __linear_sense (setq _linear_sense __linear_sense)) _linear_sense)
  (:angular_sense
   (&optional __angular_sense)
   (if __angular_sense (setq _angular_sense __angular_sense)) _angular_sense)
  (:vertical_sense
   (&optional __vertical_sense)
   (if __vertical_sense (setq _vertical_sense __vertical_sense)) _vertical_sense)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:serialization-length
   ()
   (+
    ;; bool _thruster_status
    1
    ;; bool _dh_status
    1
    ;; float32 _target_depth
    4
    ;; float32 _linear_sense
    4
    ;; float32 _angular_sense
    4
    ;; float32 _vertical_sense
    4
    ;; int32 _camera
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _thruster_status
       (if _thruster_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _dh_status
       (if _dh_status (write-byte -1 s) (write-byte 0 s))
     ;; float32 _target_depth
       (sys::poke _target_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_sense
       (sys::poke _linear_sense (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_sense
       (sys::poke _angular_sense (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vertical_sense
       (sys::poke _vertical_sense (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _camera
       (write-long _camera s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _thruster_status
     (setq _thruster_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dh_status
     (setq _dh_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _target_depth
     (setq _target_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_sense
     (setq _linear_sense (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_sense
     (setq _angular_sense (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vertical_sense
     (setq _vertical_sense (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _camera
     (setq _camera (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get copilot_interface::controlData :md5sum-) "63fc1b5d7859e5a1c46030e539babe05")
(setf (get copilot_interface::controlData :datatype-) "copilot_interface/controlData")
(setf (get copilot_interface::controlData :definition-)
      "bool thruster_status
bool dh_status
float32 target_depth
float32 linear_sense
float32 angular_sense
float32 vertical_sense
int32 camera
")



(provide :copilot_interface/controlData "63fc1b5d7859e5a1c46030e539babe05")


