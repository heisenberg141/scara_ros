; Auto-generated. Do not edit!


(cl:in-package scara_robot_control-srv)


;//! \htmlinclude find_end_vel-request.msg.html

(cl:defclass <find_end_vel-request> (roslisp-msg-protocol:ros-message)
  ((q1_dot
    :reader q1_dot
    :initarg :q1_dot
    :type cl:float
    :initform 0.0)
   (q2_dot
    :reader q2_dot
    :initarg :q2_dot
    :type cl:float
    :initform 0.0)
   (q3_dot
    :reader q3_dot
    :initarg :q3_dot
    :type cl:float
    :initform 0.0))
)

(cl:defclass find_end_vel-request (<find_end_vel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <find_end_vel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'find_end_vel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_robot_control-srv:<find_end_vel-request> is deprecated: use scara_robot_control-srv:find_end_vel-request instead.")))

(cl:ensure-generic-function 'q1_dot-val :lambda-list '(m))
(cl:defmethod q1_dot-val ((m <find_end_vel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:q1_dot-val is deprecated.  Use scara_robot_control-srv:q1_dot instead.")
  (q1_dot m))

(cl:ensure-generic-function 'q2_dot-val :lambda-list '(m))
(cl:defmethod q2_dot-val ((m <find_end_vel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:q2_dot-val is deprecated.  Use scara_robot_control-srv:q2_dot instead.")
  (q2_dot m))

(cl:ensure-generic-function 'q3_dot-val :lambda-list '(m))
(cl:defmethod q3_dot-val ((m <find_end_vel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:q3_dot-val is deprecated.  Use scara_robot_control-srv:q3_dot instead.")
  (q3_dot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <find_end_vel-request>) ostream)
  "Serializes a message object of type '<find_end_vel-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'q1_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'q2_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'q3_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <find_end_vel-request>) istream)
  "Deserializes a message object of type '<find_end_vel-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q1_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q2_dot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q3_dot) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<find_end_vel-request>)))
  "Returns string type for a service object of type '<find_end_vel-request>"
  "scara_robot_control/find_end_velRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_end_vel-request)))
  "Returns string type for a service object of type 'find_end_vel-request"
  "scara_robot_control/find_end_velRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<find_end_vel-request>)))
  "Returns md5sum for a message object of type '<find_end_vel-request>"
  "9503a353c3cb5de32c444326819cd306")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'find_end_vel-request)))
  "Returns md5sum for a message object of type 'find_end_vel-request"
  "9503a353c3cb5de32c444326819cd306")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<find_end_vel-request>)))
  "Returns full string definition for message of type '<find_end_vel-request>"
  (cl:format cl:nil "float64 q1_dot~%float64 q2_dot~%float64 q3_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'find_end_vel-request)))
  "Returns full string definition for message of type 'find_end_vel-request"
  (cl:format cl:nil "float64 q1_dot~%float64 q2_dot~%float64 q3_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <find_end_vel-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <find_end_vel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'find_end_vel-request
    (cl:cons ':q1_dot (q1_dot msg))
    (cl:cons ':q2_dot (q2_dot msg))
    (cl:cons ':q3_dot (q3_dot msg))
))
;//! \htmlinclude find_end_vel-response.msg.html

(cl:defclass <find_end_vel-response> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:float
    :initform 0.0)
   (wx
    :reader wx
    :initarg :wx
    :type cl:float
    :initform 0.0)
   (wy
    :reader wy
    :initarg :wy
    :type cl:float
    :initform 0.0)
   (wz
    :reader wz
    :initarg :wz
    :type cl:float
    :initform 0.0))
)

(cl:defclass find_end_vel-response (<find_end_vel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <find_end_vel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'find_end_vel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_robot_control-srv:<find_end_vel-response> is deprecated: use scara_robot_control-srv:find_end_vel-response instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <find_end_vel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:vx-val is deprecated.  Use scara_robot_control-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <find_end_vel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:vy-val is deprecated.  Use scara_robot_control-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <find_end_vel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:vz-val is deprecated.  Use scara_robot_control-srv:vz instead.")
  (vz m))

(cl:ensure-generic-function 'wx-val :lambda-list '(m))
(cl:defmethod wx-val ((m <find_end_vel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:wx-val is deprecated.  Use scara_robot_control-srv:wx instead.")
  (wx m))

(cl:ensure-generic-function 'wy-val :lambda-list '(m))
(cl:defmethod wy-val ((m <find_end_vel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:wy-val is deprecated.  Use scara_robot_control-srv:wy instead.")
  (wy m))

(cl:ensure-generic-function 'wz-val :lambda-list '(m))
(cl:defmethod wz-val ((m <find_end_vel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_robot_control-srv:wz-val is deprecated.  Use scara_robot_control-srv:wz instead.")
  (wz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <find_end_vel-response>) ostream)
  "Serializes a message object of type '<find_end_vel-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <find_end_vel-response>) istream)
  "Deserializes a message object of type '<find_end_vel-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<find_end_vel-response>)))
  "Returns string type for a service object of type '<find_end_vel-response>"
  "scara_robot_control/find_end_velResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_end_vel-response)))
  "Returns string type for a service object of type 'find_end_vel-response"
  "scara_robot_control/find_end_velResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<find_end_vel-response>)))
  "Returns md5sum for a message object of type '<find_end_vel-response>"
  "9503a353c3cb5de32c444326819cd306")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'find_end_vel-response)))
  "Returns md5sum for a message object of type 'find_end_vel-response"
  "9503a353c3cb5de32c444326819cd306")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<find_end_vel-response>)))
  "Returns full string definition for message of type '<find_end_vel-response>"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 vz~%float64 wx~%float64 wy~%float64 wz~% ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'find_end_vel-response)))
  "Returns full string definition for message of type 'find_end_vel-response"
  (cl:format cl:nil "float64 vx~%float64 vy~%float64 vz~%float64 wx~%float64 wy~%float64 wz~% ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <find_end_vel-response>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <find_end_vel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'find_end_vel-response
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':wx (wx msg))
    (cl:cons ':wy (wy msg))
    (cl:cons ':wz (wz msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'find_end_vel)))
  'find_end_vel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'find_end_vel)))
  'find_end_vel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_end_vel)))
  "Returns string type for a service object of type '<find_end_vel>"
  "scara_robot_control/find_end_vel")