
(cl:in-package :asdf)

(defsystem "copilot_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "controlData" :depends-on ("_package_controlData"))
    (:file "_package_controlData" :depends-on ("_package"))
  ))