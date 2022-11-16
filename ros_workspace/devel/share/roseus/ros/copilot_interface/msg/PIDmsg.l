;; Auto-generated. Do not edit!


(when (boundp 'copilot_interface::PIDmsg)
  (if (not (find-package "COPILOT_INTERFACE"))
    (make-package "COPILOT_INTERFACE"))
  (shadow 'PIDmsg (find-package "COPILOT_INTERFACE")))
(unless (find-package "COPILOT_INTERFACE::PIDMSG")
  (make-package "COPILOT_INTERFACE::PIDMSG"))

(in-package "ROS")
;;//! \htmlinclude PIDmsg.msg.html


(defclass copilot_interface::PIDmsg
  :super ros::object
  :slots (_p _i _d ))

(defmethod copilot_interface::PIDmsg
  (:init
   (&key
    ((:p __p) 0.0)
    ((:i __i) 0.0)
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _p (float __p))
   (setq _i (float __i))
   (setq _d (float __d))
   self)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:i
   (&optional __i)
   (if __i (setq _i __i)) _i)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; float32 _p
    4
    ;; float32 _i
    4
    ;; float32 _d
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _p
       (sys::poke _p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i
       (sys::poke _i (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i
     (setq _i (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get copilot_interface::PIDmsg :md5sum-) "cccd09188ee638c943ed6be95f1812c9")
(setf (get copilot_interface::PIDmsg :datatype-) "copilot_interface/PIDmsg")
(setf (get copilot_interface::PIDmsg :definition-)
      "float32 p
float32 i
float32 d

")



(provide :copilot_interface/PIDmsg "cccd09188ee638c943ed6be95f1812c9")


