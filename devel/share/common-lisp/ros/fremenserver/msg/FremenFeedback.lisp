; Auto-generated. Do not edit!


(cl:in-package fremenserver-msg)


;//! \htmlinclude FremenFeedback.msg.html

(cl:defclass <FremenFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass FremenFeedback (<FremenFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FremenFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FremenFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fremenserver-msg:<FremenFeedback> is deprecated: use fremenserver-msg:FremenFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <FremenFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fremenserver-msg:status-val is deprecated.  Use fremenserver-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FremenFeedback>) ostream)
  "Serializes a message object of type '<FremenFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FremenFeedback>) istream)
  "Deserializes a message object of type '<FremenFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FremenFeedback>)))
  "Returns string type for a message object of type '<FremenFeedback>"
  "fremenserver/FremenFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FremenFeedback)))
  "Returns string type for a message object of type 'FremenFeedback"
  "fremenserver/FremenFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FremenFeedback>)))
  "Returns md5sum for a message object of type '<FremenFeedback>"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FremenFeedback)))
  "Returns md5sum for a message object of type 'FremenFeedback"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FremenFeedback>)))
  "Returns full string definition for message of type '<FremenFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FremenFeedback)))
  "Returns full string definition for message of type 'FremenFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FremenFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FremenFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FremenFeedback
    (cl:cons ':status (status msg))
))
