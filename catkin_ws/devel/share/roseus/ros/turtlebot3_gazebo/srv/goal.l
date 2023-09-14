;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_gazebo::goal)
  (if (not (find-package "TURTLEBOT3_GAZEBO"))
    (make-package "TURTLEBOT3_GAZEBO"))
  (shadow 'goal (find-package "TURTLEBOT3_GAZEBO")))
(unless (find-package "TURTLEBOT3_GAZEBO::GOAL")
  (make-package "TURTLEBOT3_GAZEBO::GOAL"))
(unless (find-package "TURTLEBOT3_GAZEBO::GOALREQUEST")
  (make-package "TURTLEBOT3_GAZEBO::GOALREQUEST"))
(unless (find-package "TURTLEBOT3_GAZEBO::GOALRESPONSE")
  (make-package "TURTLEBOT3_GAZEBO::GOALRESPONSE"))

(in-package "ROS")





(defclass turtlebot3_gazebo::goalRequest
  :super ros::object
  :slots (_info ))

(defmethod turtlebot3_gazebo::goalRequest
  (:init
   (&key
    ((:info __info) 0)
    )
   (send-super :init)
   (setq _info (round __info))
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; int64 _info
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _info
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _info (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _info) (= (length (_info . bv)) 2)) ;; bignum
              (write-long (ash (elt (_info . bv) 0) 0) s)
              (write-long (ash (elt (_info . bv) 1) -1) s))
             ((and (class _info) (= (length (_info . bv)) 1)) ;; big1
              (write-long (elt (_info . bv) 0) s)
              (write-long (if (>= _info 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _info s)(write-long (if (>= _info 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _info
#+(or :alpha :irix6 :x86_64)
      (setf _info (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _info (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass turtlebot3_gazebo::goalResponse
  :super ros::object
  :slots (_result ))

(defmethod turtlebot3_gazebo::goalResponse
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

(defclass turtlebot3_gazebo::goal
  :super ros::object
  :slots ())

(setf (get turtlebot3_gazebo::goal :md5sum-) "77ff7a94d88edbfc6dc3d724b3c2eff1")
(setf (get turtlebot3_gazebo::goal :datatype-) "turtlebot3_gazebo/goal")
(setf (get turtlebot3_gazebo::goal :request) turtlebot3_gazebo::goalRequest)
(setf (get turtlebot3_gazebo::goal :response) turtlebot3_gazebo::goalResponse)

(defmethod turtlebot3_gazebo::goalRequest
  (:response () (instance turtlebot3_gazebo::goalResponse :init)))

(setf (get turtlebot3_gazebo::goalRequest :md5sum-) "77ff7a94d88edbfc6dc3d724b3c2eff1")
(setf (get turtlebot3_gazebo::goalRequest :datatype-) "turtlebot3_gazebo/goalRequest")
(setf (get turtlebot3_gazebo::goalRequest :definition-)
      "int64 info
---
string result

")

(setf (get turtlebot3_gazebo::goalResponse :md5sum-) "77ff7a94d88edbfc6dc3d724b3c2eff1")
(setf (get turtlebot3_gazebo::goalResponse :datatype-) "turtlebot3_gazebo/goalResponse")
(setf (get turtlebot3_gazebo::goalResponse :definition-)
      "int64 info
---
string result

")



(provide :turtlebot3_gazebo/goal "77ff7a94d88edbfc6dc3d724b3c2eff1")


