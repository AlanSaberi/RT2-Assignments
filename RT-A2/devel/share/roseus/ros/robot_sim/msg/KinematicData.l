;; Auto-generated. Do not edit!


(when (boundp 'robot_sim::KinematicData)
  (if (not (find-package "ROBOT_SIM"))
    (make-package "ROBOT_SIM"))
  (shadow 'KinematicData (find-package "ROBOT_SIM")))
(unless (find-package "ROBOT_SIM::KINEMATICDATA")
  (make-package "ROBOT_SIM::KINEMATICDATA"))

(in-package "ROS")
;;//! \htmlinclude KinematicData.msg.html


(defclass robot_sim::KinematicData
  :super ros::object
  :slots (_distance _vel_x_avrg _vel_y_avrg ))

(defmethod robot_sim::KinematicData
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:vel_x_avrg __vel_x_avrg) 0.0)
    ((:vel_y_avrg __vel_y_avrg) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _vel_x_avrg (float __vel_x_avrg))
   (setq _vel_y_avrg (float __vel_y_avrg))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:vel_x_avrg
   (&optional __vel_x_avrg)
   (if __vel_x_avrg (setq _vel_x_avrg __vel_x_avrg)) _vel_x_avrg)
  (:vel_y_avrg
   (&optional __vel_y_avrg)
   (if __vel_y_avrg (setq _vel_y_avrg __vel_y_avrg)) _vel_y_avrg)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ;; float32 _vel_x_avrg
    4
    ;; float32 _vel_y_avrg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_x_avrg
       (sys::poke _vel_x_avrg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel_y_avrg
       (sys::poke _vel_y_avrg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_x_avrg
     (setq _vel_x_avrg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel_y_avrg
     (setq _vel_y_avrg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_sim::KinematicData :md5sum-) "9801d782b5cb7db4871c31b5d325e5f8")
(setf (get robot_sim::KinematicData :datatype-) "robot_sim/KinematicData")
(setf (get robot_sim::KinematicData :definition-)
      "float32 distance
float32 vel_x_avrg
float32 vel_y_avrg
")



(provide :robot_sim/KinematicData "9801d782b5cb7db4871c31b5d325e5f8")


