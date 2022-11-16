
(cl:in-package :asdf)

(defsystem "rov_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "controlData" :depends-on ("_package_controlData"))
    (:file "_package_controlData" :depends-on ("_package"))
    (:file "thrusterPercents" :depends-on ("_package_thrusterPercents"))
    (:file "_package_thrusterPercents" :depends-on ("_package"))
  ))