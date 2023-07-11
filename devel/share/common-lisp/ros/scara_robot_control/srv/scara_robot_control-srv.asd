
(cl:in-package :asdf)

(defsystem "scara_robot_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "find_end_vel" :depends-on ("_package_find_end_vel"))
    (:file "_package_find_end_vel" :depends-on ("_package"))
    (:file "find_j_vels" :depends-on ("_package_find_j_vels"))
    (:file "_package_find_j_vels" :depends-on ("_package"))
  ))