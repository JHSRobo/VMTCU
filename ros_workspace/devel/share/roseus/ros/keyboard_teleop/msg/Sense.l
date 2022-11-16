;; Auto-generated. Do not edit!


(when (boundp 'keyboard_teleop::Sense)
  (if (not (find-package "KEYBOARD_TELEOP"))
    (make-package "KEYBOARD_TELEOP"))
  (shadow 'Sense (find-package "KEYBOARD_TELEOP")))
(unless (find-package "KEYBOARD_TELEOP::SENSE")
  (make-package "KEYBOARD_TELEOP::SENSE"))

(in-package "ROS")
;;//! \htmlinclude Sense.msg.html


(defclass keyboard_teleop::Sense
  :super ros::object
  :slots (_l_scale _a_scale _v_scale ))

(defmethod keyboard_teleop::Sense
  (:init
   (&key
    ((:l_scale __l_scale) 0.0)
    ((:a_scale __a_scale) 0.0)
    ((:v_scale __v_scale) 0.0)
    )
   (send-super :init)
   (setq _l_scale (float __l_scale))
   (setq _a_scale (float __a_scale))
   (setq _v_scale (float __v_scale))
   self)
  (:l_scale
   (&optional __l_scale)
   (if __l_scale (setq _l_scale __l_scale)) _l_scale)
  (:a_scale
   (&optional __a_scale)
   (if __a_scale (setq _a_scale __a_scale)) _a_scale)
  (:v_scale
   (&optional __v_scale)
   (if __v_scale (setq _v_scale __v_scale)) _v_scale)
  (:serialization-length
   ()
   (+
    ;; float64 _l_scale
    8
    ;; float64 _a_scale
    8
    ;; float64 _v_scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _l_scale
       (sys::poke _l_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a_scale
       (sys::poke _a_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_scale
       (sys::poke _v_scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _l_scale
     (setq _l_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a_scale
     (setq _a_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_scale
     (setq _v_scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get keyboard_teleop::Sense :md5sum-) "00b658ca86463c93197e8e9aac68e5df")
(setf (get keyboard_teleop::Sense :datatype-) "keyboard_teleop/Sense")
(setf (get keyboard_teleop::Sense :definition-)
      "

float64 l_scale
float64 a_scale
float64 v_scale
")



(provide :keyboard_teleop/Sense "00b658ca86463c93197e8e9aac68e5df")


