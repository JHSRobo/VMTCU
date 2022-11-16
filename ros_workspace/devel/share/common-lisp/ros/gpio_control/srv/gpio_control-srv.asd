
(cl:in-package :asdf)

(defsystem "gpio_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gpio_status" :depends-on ("_package_gpio_status"))
    (:file "_package_gpio_status" :depends-on ("_package"))
  ))