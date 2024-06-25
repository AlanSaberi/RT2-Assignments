; Auto-generated. Do not edit!


(cl:in-package robot_sim-msg)


;//! \htmlinclude KinematicData.msg.html

(cl:defclass <KinematicData> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (vel_x_avrg
    :reader vel_x_avrg
    :initarg :vel_x_avrg
    :type cl:float
    :initform 0.0)
   (vel_y_avrg
    :reader vel_y_avrg
    :initarg :vel_y_avrg
    :type cl:float
    :initform 0.0))
)

(cl:defclass KinematicData (<KinematicData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KinematicData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KinematicData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_sim-msg:<KinematicData> is deprecated: use robot_sim-msg:KinematicData instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <KinematicData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-msg:distance-val is deprecated.  Use robot_sim-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'vel_x_avrg-val :lambda-list '(m))
(cl:defmethod vel_x_avrg-val ((m <KinematicData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-msg:vel_x_avrg-val is deprecated.  Use robot_sim-msg:vel_x_avrg instead.")
  (vel_x_avrg m))

(cl:ensure-generic-function 'vel_y_avrg-val :lambda-list '(m))
(cl:defmethod vel_y_avrg-val ((m <KinematicData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-msg:vel_y_avrg-val is deprecated.  Use robot_sim-msg:vel_y_avrg instead.")
  (vel_y_avrg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KinematicData>) ostream)
  "Serializes a message object of type '<KinematicData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_x_avrg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_y_avrg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KinematicData>) istream)
  "Deserializes a message object of type '<KinematicData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_x_avrg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_y_avrg) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KinematicData>)))
  "Returns string type for a message object of type '<KinematicData>"
  "robot_sim/KinematicData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KinematicData)))
  "Returns string type for a message object of type 'KinematicData"
  "robot_sim/KinematicData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KinematicData>)))
  "Returns md5sum for a message object of type '<KinematicData>"
  "9801d782b5cb7db4871c31b5d325e5f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KinematicData)))
  "Returns md5sum for a message object of type 'KinematicData"
  "9801d782b5cb7db4871c31b5d325e5f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KinematicData>)))
  "Returns full string definition for message of type '<KinematicData>"
  (cl:format cl:nil "float32 distance~%float32 vel_x_avrg~%float32 vel_y_avrg~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KinematicData)))
  "Returns full string definition for message of type 'KinematicData"
  (cl:format cl:nil "float32 distance~%float32 vel_x_avrg~%float32 vel_y_avrg~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KinematicData>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KinematicData>))
  "Converts a ROS message object to a list"
  (cl:list 'KinematicData
    (cl:cons ':distance (distance msg))
    (cl:cons ':vel_x_avrg (vel_x_avrg msg))
    (cl:cons ':vel_y_avrg (vel_y_avrg msg))
))
