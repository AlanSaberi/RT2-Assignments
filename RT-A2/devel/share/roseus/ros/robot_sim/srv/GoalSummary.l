;; Auto-generated. Do not edit!


(when (boundp 'robot_sim::GoalSummary)
  (if (not (find-package "ROBOT_SIM"))
    (make-package "ROBOT_SIM"))
  (shadow 'GoalSummary (find-package "ROBOT_SIM")))
(unless (find-package "ROBOT_SIM::GOALSUMMARY")
  (make-package "ROBOT_SIM::GOALSUMMARY"))
(unless (find-package "ROBOT_SIM::GOALSUMMARYREQUEST")
  (make-package "ROBOT_SIM::GOALSUMMARYREQUEST"))
(unless (find-package "ROBOT_SIM::GOALSUMMARYRESPONSE")
  (make-package "ROBOT_SIM::GOALSUMMARYRESPONSE"))

(in-package "ROS")





(defclass robot_sim::GoalSummaryRequest
  :super ros::object
  :slots ())

(defmethod robot_sim::GoalSummaryRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_sim::GoalSummaryResponse
  :super ros::object
  :slots (_goals_reached _goals_cancelled ))

(defmethod robot_sim::GoalSummaryResponse
  (:init
   (&key
    ((:goals_reached __goals_reached) 0.0)
    ((:goals_cancelled __goals_cancelled) 0.0)
    )
   (send-super :init)
   (setq _goals_reached (float __goals_reached))
   (setq _goals_cancelled (float __goals_cancelled))
   self)
  (:goals_reached
   (&optional __goals_reached)
   (if __goals_reached (setq _goals_reached __goals_reached)) _goals_reached)
  (:goals_cancelled
   (&optional __goals_cancelled)
   (if __goals_cancelled (setq _goals_cancelled __goals_cancelled)) _goals_cancelled)
  (:serialization-length
   ()
   (+
    ;; float32 _goals_reached
    4
    ;; float32 _goals_cancelled
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _goals_reached
       (sys::poke _goals_reached (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _goals_cancelled
       (sys::poke _goals_cancelled (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _goals_reached
     (setq _goals_reached (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _goals_cancelled
     (setq _goals_cancelled (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robot_sim::GoalSummary
  :super ros::object
  :slots ())

(setf (get robot_sim::GoalSummary :md5sum-) "416487591520874cc4b095e59568924c")
(setf (get robot_sim::GoalSummary :datatype-) "robot_sim/GoalSummary")
(setf (get robot_sim::GoalSummary :request) robot_sim::GoalSummaryRequest)
(setf (get robot_sim::GoalSummary :response) robot_sim::GoalSummaryResponse)

(defmethod robot_sim::GoalSummaryRequest
  (:response () (instance robot_sim::GoalSummaryResponse :init)))

(setf (get robot_sim::GoalSummaryRequest :md5sum-) "416487591520874cc4b095e59568924c")
(setf (get robot_sim::GoalSummaryRequest :datatype-) "robot_sim/GoalSummaryRequest")
(setf (get robot_sim::GoalSummaryRequest :definition-)
      "---
float32 goals_reached
float32 goals_cancelled
")

(setf (get robot_sim::GoalSummaryResponse :md5sum-) "416487591520874cc4b095e59568924c")
(setf (get robot_sim::GoalSummaryResponse :datatype-) "robot_sim/GoalSummaryResponse")
(setf (get robot_sim::GoalSummaryResponse :definition-)
      "---
float32 goals_reached
float32 goals_cancelled
")



(provide :robot_sim/GoalSummary "416487591520874cc4b095e59568924c")


