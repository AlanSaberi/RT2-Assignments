
(cl:in-package :asdf)

(defsystem "robot_sim-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoalSummary" :depends-on ("_package_GoalSummary"))
    (:file "_package_GoalSummary" :depends-on ("_package"))
  ))