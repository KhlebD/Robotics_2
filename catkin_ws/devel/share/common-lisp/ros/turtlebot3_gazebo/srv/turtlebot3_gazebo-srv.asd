
(cl:in-package :asdf)

(defsystem "turtlebot3_gazebo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "env" :depends-on ("_package_env"))
    (:file "_package_env" :depends-on ("_package"))
    (:file "goal" :depends-on ("_package_goal"))
    (:file "_package_goal" :depends-on ("_package"))
    (:file "skills" :depends-on ("_package_skills"))
    (:file "_package_skills" :depends-on ("_package"))
  ))