;; Auto-generated. Do not edit!


(when (boundp 'turtlebot3_gazebo::skills)
  (if (not (find-package "TURTLEBOT3_GAZEBO"))
    (make-package "TURTLEBOT3_GAZEBO"))
  (shadow 'skills (find-package "TURTLEBOT3_GAZEBO")))
(unless (find-package "TURTLEBOT3_GAZEBO::SKILLS")
  (make-package "TURTLEBOT3_GAZEBO::SKILLS"))
(unless (find-package "TURTLEBOT3_GAZEBO::SKILLSREQUEST")
  (make-package "TURTLEBOT3_GAZEBO::SKILLSREQUEST"))
(unless (find-package "TURTLEBOT3_GAZEBO::SKILLSRESPONSE")
  (make-package "TURTLEBOT3_GAZEBO::SKILLSRESPONSE"))

(in-package "ROS")





(defclass turtlebot3_gazebo::skillsRequest
  :super ros::object
  :slots (_info ))

(defmethod turtlebot3_gazebo::skillsRequest
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

(defclass turtlebot3_gazebo::skillsResponse
  :super ros::object
  :slots (_result ))

(defmethod turtlebot3_gazebo::skillsResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int64 _result
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _result
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _result (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _result) (= (length (_result . bv)) 2)) ;; bignum
              (write-long (ash (elt (_result . bv) 0) 0) s)
              (write-long (ash (elt (_result . bv) 1) -1) s))
             ((and (class _result) (= (length (_result . bv)) 1)) ;; big1
              (write-long (elt (_result . bv) 0) s)
              (write-long (if (>= _result 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _result s)(write-long (if (>= _result 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _result
#+(or :alpha :irix6 :x86_64)
      (setf _result (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _result (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass turtlebot3_gazebo::skills
  :super ros::object
  :slots ())

(setf (get turtlebot3_gazebo::skills :md5sum-) "229397e1a56adaf3792840999a6595c1")
(setf (get turtlebot3_gazebo::skills :datatype-) "turtlebot3_gazebo/skills")
(setf (get turtlebot3_gazebo::skills :request) turtlebot3_gazebo::skillsRequest)
(setf (get turtlebot3_gazebo::skills :response) turtlebot3_gazebo::skillsResponse)

(defmethod turtlebot3_gazebo::skillsRequest
  (:response () (instance turtlebot3_gazebo::skillsResponse :init)))

(setf (get turtlebot3_gazebo::skillsRequest :md5sum-) "229397e1a56adaf3792840999a6595c1")
(setf (get turtlebot3_gazebo::skillsRequest :datatype-) "turtlebot3_gazebo/skillsRequest")
(setf (get turtlebot3_gazebo::skillsRequest :definition-)
      "string info
---
int64 result

")

(setf (get turtlebot3_gazebo::skillsResponse :md5sum-) "229397e1a56adaf3792840999a6595c1")
(setf (get turtlebot3_gazebo::skillsResponse :datatype-) "turtlebot3_gazebo/skillsResponse")
(setf (get turtlebot3_gazebo::skillsResponse :definition-)
      "string info
---
int64 result

")



(provide :turtlebot3_gazebo/skills "229397e1a56adaf3792840999a6595c1")


