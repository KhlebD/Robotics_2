;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_gazebo::env)
  (if (not (find-package "TURTLEBOT3_GAZEBO"))
    (make-package "TURTLEBOT3_GAZEBO"))
  (shadow 'env (find-package "TURTLEBOT3_GAZEBO")))
(unless (find-package "TURTLEBOT3_GAZEBO::ENV")
  (make-package "TURTLEBOT3_GAZEBO::ENV"))
(unless (find-package "TURTLEBOT3_GAZEBO::ENVREQUEST")
  (make-package "TURTLEBOT3_GAZEBO::ENVREQUEST"))
(unless (find-package "TURTLEBOT3_GAZEBO::ENVRESPONSE")
  (make-package "TURTLEBOT3_GAZEBO::ENVRESPONSE"))

(in-package "ROS")





(defclass turtlebot3_gazebo::envRequest
  :super ros::object
  :slots (_info ))

(defmethod turtlebot3_gazebo::envRequest
  (:init
   (&key
    ((:info __info) "")
    )
   (send-super :init)
   (setq _info (string __info))
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtlebot3_gazebo::envResponse
  :super ros::object
  :slots (_result ))

(defmethod turtlebot3_gazebo::envResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass turtlebot3_gazebo::env
  :super ros::object
  :slots ())

(setf (get turtlebot3_gazebo::env :md5sum-) "61e5a00050969050ae93076978354c3f")
(setf (get turtlebot3_gazebo::env :datatype-) "turtlebot3_gazebo/env")
(setf (get turtlebot3_gazebo::env :request) turtlebot3_gazebo::envRequest)
(setf (get turtlebot3_gazebo::env :response) turtlebot3_gazebo::envResponse)

(defmethod turtlebot3_gazebo::envRequest
  (:response () (instance turtlebot3_gazebo::envResponse :init)))

(setf (get turtlebot3_gazebo::envRequest :md5sum-) "61e5a00050969050ae93076978354c3f")
(setf (get turtlebot3_gazebo::envRequest :datatype-) "turtlebot3_gazebo/envRequest")
(setf (get turtlebot3_gazebo::envRequest :definition-)
      "string info
---
string result

")

(setf (get turtlebot3_gazebo::envResponse :md5sum-) "61e5a00050969050ae93076978354c3f")
(setf (get turtlebot3_gazebo::envResponse :datatype-) "turtlebot3_gazebo/envResponse")
(setf (get turtlebot3_gazebo::envResponse :definition-)
      "string info
---
string result

")



(provide :turtlebot3_gazebo/env "61e5a00050969050ae93076978354c3f")


