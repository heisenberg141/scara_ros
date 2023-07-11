;; Auto-generated. Do not edit!


(when (boundp 'scara_robot_control::find_j_vels)
  (if (not (find-package "SCARA_ROBOT_CONTROL"))
    (make-package "SCARA_ROBOT_CONTROL"))
  (shadow 'find_j_vels (find-package "SCARA_ROBOT_CONTROL")))
(unless (find-package "SCARA_ROBOT_CONTROL::FIND_J_VELS")
  (make-package "SCARA_ROBOT_CONTROL::FIND_J_VELS"))
(unless (find-package "SCARA_ROBOT_CONTROL::FIND_J_VELSREQUEST")
  (make-package "SCARA_ROBOT_CONTROL::FIND_J_VELSREQUEST"))
(unless (find-package "SCARA_ROBOT_CONTROL::FIND_J_VELSRESPONSE")
  (make-package "SCARA_ROBOT_CONTROL::FIND_J_VELSRESPONSE"))

(in-package "ROS")





(defclass scara_robot_control::find_j_velsRequest
  :super ros::object
  :slots (_vx _vy _vz _wx _wy _wz ))

(defmethod scara_robot_control::find_j_velsRequest
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:wx __wx) 0.0)
    ((:wy __wy) 0.0)
    ((:wz __wz) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _wx (float __wx))
   (setq _wy (float __wy))
   (setq _wz (float __wz))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:wx
   (&optional __wx)
   (if __wx (setq _wx __wx)) _wx)
  (:wy
   (&optional __wy)
   (if __wy (setq _wy __wy)) _wy)
  (:wz
   (&optional __wz)
   (if __wz (setq _wz __wz)) _wz)
  (:serialization-length
   ()
   (+
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ;; float64 _wx
    8
    ;; float64 _wy
    8
    ;; float64 _wz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wx
       (sys::poke _wx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wy
       (sys::poke _wy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wz
       (sys::poke _wz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wx
     (setq _wx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wy
     (setq _wy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wz
     (setq _wz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_robot_control::find_j_velsResponse
  :super ros::object
  :slots (_q1_dot _q2_dot _q3_dot ))

(defmethod scara_robot_control::find_j_velsResponse
  (:init
   (&key
    ((:q1_dot __q1_dot) 0.0)
    ((:q2_dot __q2_dot) 0.0)
    ((:q3_dot __q3_dot) 0.0)
    )
   (send-super :init)
   (setq _q1_dot (float __q1_dot))
   (setq _q2_dot (float __q2_dot))
   (setq _q3_dot (float __q3_dot))
   self)
  (:q1_dot
   (&optional __q1_dot)
   (if __q1_dot (setq _q1_dot __q1_dot)) _q1_dot)
  (:q2_dot
   (&optional __q2_dot)
   (if __q2_dot (setq _q2_dot __q2_dot)) _q2_dot)
  (:q3_dot
   (&optional __q3_dot)
   (if __q3_dot (setq _q3_dot __q3_dot)) _q3_dot)
  (:serialization-length
   ()
   (+
    ;; float64 _q1_dot
    8
    ;; float64 _q2_dot
    8
    ;; float64 _q3_dot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _q1_dot
       (sys::poke _q1_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q2_dot
       (sys::poke _q2_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _q3_dot
       (sys::poke _q3_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _q1_dot
     (setq _q1_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q2_dot
     (setq _q2_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _q3_dot
     (setq _q3_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_robot_control::find_j_vels
  :super ros::object
  :slots ())

(setf (get scara_robot_control::find_j_vels :md5sum-) "cd20452eba578a523525eab281dd96c5")
(setf (get scara_robot_control::find_j_vels :datatype-) "scara_robot_control/find_j_vels")
(setf (get scara_robot_control::find_j_vels :request) scara_robot_control::find_j_velsRequest)
(setf (get scara_robot_control::find_j_vels :response) scara_robot_control::find_j_velsResponse)

(defmethod scara_robot_control::find_j_velsRequest
  (:response () (instance scara_robot_control::find_j_velsResponse :init)))

(setf (get scara_robot_control::find_j_velsRequest :md5sum-) "cd20452eba578a523525eab281dd96c5")
(setf (get scara_robot_control::find_j_velsRequest :datatype-) "scara_robot_control/find_j_velsRequest")
(setf (get scara_robot_control::find_j_velsRequest :definition-)
      "
float64 vx
float64 vy
float64 vz
float64 wx
float64 wy
float64 wz
---
float64 q1_dot
float64 q2_dot
float64 q3_dot

 

")

(setf (get scara_robot_control::find_j_velsResponse :md5sum-) "cd20452eba578a523525eab281dd96c5")
(setf (get scara_robot_control::find_j_velsResponse :datatype-) "scara_robot_control/find_j_velsResponse")
(setf (get scara_robot_control::find_j_velsResponse :definition-)
      "
float64 vx
float64 vy
float64 vz
float64 wx
float64 wy
float64 wz
---
float64 q1_dot
float64 q2_dot
float64 q3_dot

 

")



(provide :scara_robot_control/find_j_vels "cd20452eba578a523525eab281dd96c5")


