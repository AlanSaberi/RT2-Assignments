; Auto-generated. Do not edit!


(cl:in-package robot_sim-srv)


;//! \htmlinclude GoalSummary-request.msg.html

(cl:defclass <GoalSummary-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoalSummary-request (<GoalSummary-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalSummary-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalSummary-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_sim-srv:<GoalSummary-request> is deprecated: use robot_sim-srv:GoalSummary-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalSummary-request>) ostream)
  "Serializes a message object of type '<GoalSummary-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalSummary-request>) istream)
  "Deserializes a message object of type '<GoalSummary-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalSummary-request>)))
  "Returns string type for a service object of type '<GoalSummary-request>"
  "robot_sim/GoalSummaryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalSummary-request)))
  "Returns string type for a service object of type 'GoalSummary-request"
  "robot_sim/GoalSummaryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalSummary-request>)))
  "Returns md5sum for a message object of type '<GoalSummary-request>"
  "416487591520874cc4b095e59568924c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalSummary-request)))
  "Returns md5sum for a message object of type 'GoalSummary-request"
  "416487591520874cc4b095e59568924c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalSummary-request>)))
  "Returns full string definition for message of type '<GoalSummary-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalSummary-request)))
  "Returns full string definition for message of type 'GoalSummary-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalSummary-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalSummary-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalSummary-request
))
;//! \htmlinclude GoalSummary-response.msg.html

(cl:defclass <GoalSummary-response> (roslisp-msg-protocol:ros-message)
  ((goals_reached
    :reader goals_reached
    :initarg :goals_reached
    :type cl:float
    :initform 0.0)
   (goals_cancelled
    :reader goals_cancelled
    :initarg :goals_cancelled
    :type cl:float
    :initform 0.0))
)

(cl:defclass GoalSummary-response (<GoalSummary-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalSummary-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalSummary-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_sim-srv:<GoalSummary-response> is deprecated: use robot_sim-srv:GoalSummary-response instead.")))

(cl:ensure-generic-function 'goals_reached-val :lambda-list '(m))
(cl:defmethod goals_reached-val ((m <GoalSummary-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:goals_reached-val is deprecated.  Use robot_sim-srv:goals_reached instead.")
  (goals_reached m))

(cl:ensure-generic-function 'goals_cancelled-val :lambda-list '(m))
(cl:defmethod goals_cancelled-val ((m <GoalSummary-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_sim-srv:goals_cancelled-val is deprecated.  Use robot_sim-srv:goals_cancelled instead.")
  (goals_cancelled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalSummary-response>) ostream)
  "Serializes a message object of type '<GoalSummary-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goals_reached))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goals_cancelled))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalSummary-response>) istream)
  "Deserializes a message object of type '<GoalSummary-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goals_reached) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goals_cancelled) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalSummary-response>)))
  "Returns string type for a service object of type '<GoalSummary-response>"
  "robot_sim/GoalSummaryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalSummary-response)))
  "Returns string type for a service object of type 'GoalSummary-response"
  "robot_sim/GoalSummaryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalSummary-response>)))
  "Returns md5sum for a message object of type '<GoalSummary-response>"
  "416487591520874cc4b095e59568924c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalSummary-response)))
  "Returns md5sum for a message object of type 'GoalSummary-response"
  "416487591520874cc4b095e59568924c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalSummary-response>)))
  "Returns full string definition for message of type '<GoalSummary-response>"
  (cl:format cl:nil "float32 goals_reached~%float32 goals_cancelled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalSummary-response)))
  "Returns full string definition for message of type 'GoalSummary-response"
  (cl:format cl:nil "float32 goals_reached~%float32 goals_cancelled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalSummary-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalSummary-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalSummary-response
    (cl:cons ':goals_reached (goals_reached msg))
    (cl:cons ':goals_cancelled (goals_cancelled msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoalSummary)))
  'GoalSummary-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoalSummary)))
  'GoalSummary-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalSummary)))
  "Returns string type for a service object of type '<GoalSummary>"
  "robot_sim/GoalSummary")