; Auto-generated. Do not edit!


(cl:in-package turtlebot3_gazebo-srv)


;//! \htmlinclude skills-request.msg.html

(cl:defclass <skills-request> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass skills-request (<skills-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skills-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skills-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_gazebo-srv:<skills-request> is deprecated: use turtlebot3_gazebo-srv:skills-request instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <skills-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_gazebo-srv:info-val is deprecated.  Use turtlebot3_gazebo-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skills-request>) ostream)
  "Serializes a message object of type '<skills-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skills-request>) istream)
  "Deserializes a message object of type '<skills-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skills-request>)))
  "Returns string type for a service object of type '<skills-request>"
  "turtlebot3_gazebo/skillsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skills-request)))
  "Returns string type for a service object of type 'skills-request"
  "turtlebot3_gazebo/skillsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skills-request>)))
  "Returns md5sum for a message object of type '<skills-request>"
  "229397e1a56adaf3792840999a6595c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skills-request)))
  "Returns md5sum for a message object of type 'skills-request"
  "229397e1a56adaf3792840999a6595c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skills-request>)))
  "Returns full string definition for message of type '<skills-request>"
  (cl:format cl:nil "string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skills-request)))
  "Returns full string definition for message of type 'skills-request"
  (cl:format cl:nil "string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skills-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skills-request>))
  "Converts a ROS message object to a list"
  (cl:list 'skills-request
    (cl:cons ':info (info msg))
))
;//! \htmlinclude skills-response.msg.html

(cl:defclass <skills-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass skills-response (<skills-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skills-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skills-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_gazebo-srv:<skills-response> is deprecated: use turtlebot3_gazebo-srv:skills-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <skills-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_gazebo-srv:result-val is deprecated.  Use turtlebot3_gazebo-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skills-response>) ostream)
  "Serializes a message object of type '<skills-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skills-response>) istream)
  "Deserializes a message object of type '<skills-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skills-response>)))
  "Returns string type for a service object of type '<skills-response>"
  "turtlebot3_gazebo/skillsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skills-response)))
  "Returns string type for a service object of type 'skills-response"
  "turtlebot3_gazebo/skillsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skills-response>)))
  "Returns md5sum for a message object of type '<skills-response>"
  "229397e1a56adaf3792840999a6595c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skills-response)))
  "Returns md5sum for a message object of type 'skills-response"
  "229397e1a56adaf3792840999a6595c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skills-response>)))
  "Returns full string definition for message of type '<skills-response>"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skills-response)))
  "Returns full string definition for message of type 'skills-response"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skills-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skills-response>))
  "Converts a ROS message object to a list"
  (cl:list 'skills-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'skills)))
  'skills-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'skills)))
  'skills-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skills)))
  "Returns string type for a service object of type '<skills>"
  "turtlebot3_gazebo/skills")