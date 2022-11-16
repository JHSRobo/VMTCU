;; Auto-generated. Do not edit!


(when (boundp 'rov_control_interface::thrusterPercents)
  (if (not (find-package "ROV_CONTROL_INTERFACE"))
    (make-package "ROV_CONTROL_INTERFACE"))
  (shadow 'thrusterPercents (find-package "ROV_CONTROL_INTERFACE")))
(unless (find-package "ROV_CONTROL_INTERFACE::THRUSTERPERCENTS")
  (make-package "ROV_CONTROL_INTERFACE::THRUSTERPERCENTS"))

(in-package "ROS")
;;//! \htmlinclude thrusterPercents.msg.html


(defclass rov_control_interface::thrusterPercents
  :super ros::object
  :slots (_t1 _t2 _t3 _t4 _t5 _t6 ))

(defmethod rov_control_interface::thrusterPercents
  (:init
   (&key
    ((:t1 __t1) 0)
    ((:t2 __t2) 0)
    ((:t3 __t3) 0)
    ((:t4 __t4) 0)
    ((:t5 __t5) 0)
    ((:t6 __t6) 0)
    )
   (send-super :init)
   (setq _t1 (round __t1))
   (setq _t2 (round __t2))
   (setq _t3 (round __t3))
   (setq _t4 (round __t4))
   (setq _t5 (round __t5))
   (setq _t6 (round __t6))
   self)
  (:t1
   (&optional __t1)
   (if __t1 (setq _t1 __t1)) _t1)
  (:t2
   (&optional __t2)
   (if __t2 (setq _t2 __t2)) _t2)
  (:t3
   (&optional __t3)
   (if __t3 (setq _t3 __t3)) _t3)
  (:t4
   (&optional __t4)
   (if __t4 (setq _t4 __t4)) _t4)
  (:t5
   (&optional __t5)
   (if __t5 (setq _t5 __t5)) _t5)
  (:t6
   (&optional __t6)
   (if __t6 (setq _t6 __t6)) _t6)
  (:serialization-length
   ()
   (+
    ;; int32 _t1
    4
    ;; int32 _t2
    4
    ;; int32 _t3
    4
    ;; int32 _t4
    4
    ;; int32 _t5
    4
    ;; int32 _t6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _t1
       (write-long _t1 s)
     ;; int32 _t2
       (write-long _t2 s)
     ;; int32 _t3
       (write-long _t3 s)
     ;; int32 _t4
       (write-long _t4 s)
     ;; int32 _t5
       (write-long _t5 s)
     ;; int32 _t6
       (write-long _t6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _t1
     (setq _t1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _t2
     (setq _t2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _t3
     (setq _t3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _t4
     (setq _t4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _t5
     (setq _t5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _t6
     (setq _t6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rov_control_interface::thrusterPercents :md5sum-) "860e29d4fdc02d5eacdfc57885542f75")
(setf (get rov_control_interface::thrusterPercents :datatype-) "rov_control_interface/thrusterPercents")
(setf (get rov_control_interface::thrusterPercents :definition-)
      "int32 t1
int32 t2
int32 t3
int32 t4
int32 t5
int32 t6

")



(provide :rov_control_interface/thrusterPercents "860e29d4fdc02d5eacdfc57885542f75")


