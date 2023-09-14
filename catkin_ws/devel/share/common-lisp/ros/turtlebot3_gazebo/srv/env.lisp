; Auto-generated. Do not edit!


(cl:in-package turtlebot3_gazebo-srv)


;//! \htmlinclude env-request.msg.html

(cl:defclass <env-request> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass env-request (<env-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <env-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'env-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_gazebo-srv:<env-request> is deprecated: use turtlebot3_gazebo-srv:env-request instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <env-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_gazebo-srv:info-val is deprecated.  Use turtlebot3_gazebo-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <env-request>) ostream)
  "Serializes a message object of type '<env-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <env-request>) istream)
  "Deserializes a message object of type '<env-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<env-request>)))
  "Returns string type for a service object of type '<env-request>"
  "turtlebot3_gazebo/envRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'env-request)))
  "Returns string type for a service object of type 'env-request"
  "turtlebot3_gazebo/envRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<env-request>)))
  "Returns md5sum for a message object of type '<env-request>"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'env-request)))
  "Returns md5sum for a message object of type 'env-request"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<env-request>)))
  "Returns full string definition for message of type '<env-request>"
  (cl:format cl:nil "string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'env-request)))
  "Returns full string definition for message of type 'env-request"
  (cl:format cl:nil "string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <env-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <env-request>))
  "Converts a ROS message object to a list"
  (cl:list 'env-request
    (cl:cons ':info (info msg))
))
;//! \htmlinclude env-response.msg.html

(cl:defclass <env-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass env-response (<env-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <env-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'env-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot3_gazebo-srv:<env-response> is deprecated: use turtlebot3_gazebo-srv:env-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <env-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot3_gazebo-srv:result-val is deprecated.  Use turtlebot3_gazebo-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <env-response>) ostream)
  "Serializes a message object of type '<env-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <env-response>) istream)
  "Deserializes a message object of type '<env-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<env-response>)))
  "Returns string type for a service object of type '<env-response>"
  "turtlebot3_gazebo/envResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'env-response)))
  "Returns string type for a service object of type 'env-response"
  "turtlebot3_gazebo/envResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<env-response>)))
  "Returns md5sum for a message object of type '<env-response>"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'env-response)))
  "Returns md5sum for a message object of type 'env-response"
  "61e5a00050969050ae93076978354c3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<env-response>)))
  "Returns full string definition for message of type '<env-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'env-response)))
  "Returns full string definition for message of type 'env-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <env-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <env-response>))
  "Converts a ROS message object to a list"
  (cl:list 'env-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'env)))
  'env-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'env)))
  'env-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'env)))
  "Returns string type for a service object of type '<env>"
  "turtlebot3_gazebo/env")