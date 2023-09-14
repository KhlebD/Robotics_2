; Auto-generated. Do not edit!


(cl:in-package turtlebot3_gazebo-srv)


;//! \htmlinclude goal-request.msg.html

(cl:defclass <goal-request> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:integer
    :initform 0))
)

(cl:defclass goal-request (<goal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_gazebo-srv:<goal-request> is deprecated: use turtlebot3_gazebo-srv:goal-request instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_gazebo-srv:info-val is deprecated.  Use turtlebot3_gazebo-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goal-request>) ostream)
  "Serializes a message object of type '<goal-request>"
  (cl:let* ((signed (cl:slot-value msg 'info)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goal-request>) istream)
  "Deserializes a message object of type '<goal-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goal-request>)))
  "Returns string type for a service object of type '<goal-request>"
  "turtlebot3_gazebo/goalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goal-request)))
  "Returns string type for a service object of type 'goal-request"
  "turtlebot3_gazebo/goalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goal-request>)))
  "Returns md5sum for a message object of type '<goal-request>"
  "77ff7a94d88edbfc6dc3d724b3c2eff1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goal-request)))
  "Returns md5sum for a message object of type 'goal-request"
  "77ff7a94d88edbfc6dc3d724b3c2eff1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goal-request>)))
  "Returns full string definition for message of type '<goal-request>"
  (cl:format cl:nil "int64 info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goal-request)))
  "Returns full string definition for message of type 'goal-request"
  (cl:format cl:nil "int64 info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goal-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'goal-request
    (cl:cons ':info (info msg))
))
;//! \htmlinclude goal-response.msg.html

(cl:defclass <goal-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass goal-response (<goal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_gazebo-srv:<goal-response> is deprecated: use turtlebot3_gazebo-srv:goal-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <goal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_gazebo-srv:result-val is deprecated.  Use turtlebot3_gazebo-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goal-response>) ostream)
  "Serializes a message object of type '<goal-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goal-response>) istream)
  "Deserializes a message object of type '<goal-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goal-response>)))
  "Returns string type for a service object of type '<goal-response>"
  "turtlebot3_gazebo/goalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goal-response)))
  "Returns string type for a service object of type 'goal-response"
  "turtlebot3_gazebo/goalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goal-response>)))
  "Returns md5sum for a message object of type '<goal-response>"
  "77ff7a94d88edbfc6dc3d724b3c2eff1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goal-response)))
  "Returns md5sum for a message object of type 'goal-response"
  "77ff7a94d88edbfc6dc3d724b3c2eff1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goal-response>)))
  "Returns full string definition for message of type '<goal-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goal-response)))
  "Returns full string definition for message of type 'goal-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goal-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'goal-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'goal)))
  'goal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'goal)))
  'goal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goal)))
  "Returns string type for a service object of type '<goal>"
  "turtlebot3_gazebo/goal")