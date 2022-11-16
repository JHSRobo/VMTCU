;; Auto-generated. Do not edit!


(when (boundp 'keyboard_teleop::StringArray)
  (if (not (find-package "KEYBOARD_TELEOP"))
    (make-package "KEYBOARD_TELEOP"))
  (shadow 'StringArray (find-package "KEYBOARD_TELEOP")))
(unless (find-package "KEYBOARD_TELEOP::STRINGARRAY")
  (make-package "KEYBOARD_TELEOP::STRINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude StringArray.msg.html


(defclass keyboard_teleop::StringArray
  :super ros::object
  :slots (_strings ))

(defmethod keyboard_teleop::StringArray
  (:init
   (&key
    ((:strings __strings) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _strings __strings)
   self)
  (:strings
   (&optional __strings)
   (if __strings (setq _strings __strings)) _strings)
  (:serialization-length
   ()
   (+
    ;; string[] _strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _strings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _strings
     (write-long (length _strings) s)
     (dolist (elem _strings)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get keyboard_teleop::StringArray :md5sum-) "51789d20146e565223d0963361aecda1")
(setf (get keyboard_teleop::StringArray :datatype-) "keyboard_teleop/StringArray")
(setf (get keyboard_teleop::StringArray :definition-)
      "string[] strings

")



(provide :keyboard_teleop/StringArray "51789d20146e565223d0963361aecda1")


