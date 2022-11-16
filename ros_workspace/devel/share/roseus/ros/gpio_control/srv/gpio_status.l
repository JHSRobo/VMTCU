;; Auto-generated. Do not edit!


(when (boundp 'gpio_control::gpio_status)
  (if (not (find-package "GPIO_CONTROL"))
    (make-package "GPIO_CONTROL"))
  (shadow 'gpio_status (find-package "GPIO_CONTROL")))
(unless (find-package "GPIO_CONTROL::GPIO_STATUS")
  (make-package "GPIO_CONTROL::GPIO_STATUS"))
(unless (find-package "GPIO_CONTROL::GPIO_STATUSREQUEST")
  (make-package "GPIO_CONTROL::GPIO_STATUSREQUEST"))
(unless (find-package "GPIO_CONTROL::GPIO_STATUSRESPONSE")
  (make-package "GPIO_CONTROL::GPIO_STATUSRESPONSE"))

(in-package "ROS")





(defclass gpio_control::gpio_statusRequest
  :super ros::object
  :slots (_gpioNum ))

(defmethod gpio_control::gpio_statusRequest
  (:init
   (&key
    ((:gpioNum __gpioNum) 0)
    )
   (send-super :init)
   (setq _gpioNum (round __gpioNum))
   self)
  (:gpioNum
   (&optional __gpioNum)
   (if __gpioNum (setq _gpioNum __gpioNum)) _gpioNum)
  (:serialization-length
   ()
   (+
    ;; int64 _gpioNum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _gpioNum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _gpioNum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _gpioNum) (= (length (_gpioNum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_gpioNum . bv) 0) 0) s)
              (write-long (ash (elt (_gpioNum . bv) 1) -1) s))
             ((and (class _gpioNum) (= (length (_gpioNum . bv)) 1)) ;; big1
              (write-long (elt (_gpioNum . bv) 0) s)
              (write-long (if (>= _gpioNum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _gpioNum s)(write-long (if (>= _gpioNum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _gpioNum
#+(or :alpha :irix6 :x86_64)
      (setf _gpioNum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _gpioNum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass gpio_control::gpio_statusResponse
  :super ros::object
  :slots (_status ))

(defmethod gpio_control::gpio_statusResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gpio_control::gpio_status
  :super ros::object
  :slots ())

(setf (get gpio_control::gpio_status :md5sum-) "3b90914d035160dc78631aed0a7b703d")
(setf (get gpio_control::gpio_status :datatype-) "gpio_control/gpio_status")
(setf (get gpio_control::gpio_status :request) gpio_control::gpio_statusRequest)
(setf (get gpio_control::gpio_status :response) gpio_control::gpio_statusResponse)

(defmethod gpio_control::gpio_statusRequest
  (:response () (instance gpio_control::gpio_statusResponse :init)))

(setf (get gpio_control::gpio_statusRequest :md5sum-) "3b90914d035160dc78631aed0a7b703d")
(setf (get gpio_control::gpio_statusRequest :datatype-) "gpio_control/gpio_statusRequest")
(setf (get gpio_control::gpio_statusRequest :definition-)
      "int64 gpioNum
---
bool status

")

(setf (get gpio_control::gpio_statusResponse :md5sum-) "3b90914d035160dc78631aed0a7b703d")
(setf (get gpio_control::gpio_statusResponse :datatype-) "gpio_control/gpio_statusResponse")
(setf (get gpio_control::gpio_statusResponse :definition-)
      "int64 gpioNum
---
bool status

")



(provide :gpio_control/gpio_status "3b90914d035160dc78631aed0a7b703d")


