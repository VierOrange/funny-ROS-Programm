; Auto-generated. Do not edit!


(cl:in-package morse_service-srv)


;//! \htmlinclude MorseEncrypt-request.msg.html

(cl:defclass <MorseEncrypt-request> (roslisp-msg-protocol:ros-message)
  ((mes
    :reader mes
    :initarg :mes
    :type cl:string
    :initform ""))
)

(cl:defclass MorseEncrypt-request (<MorseEncrypt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MorseEncrypt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MorseEncrypt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morse_service-srv:<MorseEncrypt-request> is deprecated: use morse_service-srv:MorseEncrypt-request instead.")))

(cl:ensure-generic-function 'mes-val :lambda-list '(m))
(cl:defmethod mes-val ((m <MorseEncrypt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morse_service-srv:mes-val is deprecated.  Use morse_service-srv:mes instead.")
  (mes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MorseEncrypt-request>) ostream)
  "Serializes a message object of type '<MorseEncrypt-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MorseEncrypt-request>) istream)
  "Deserializes a message object of type '<MorseEncrypt-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mes) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mes) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MorseEncrypt-request>)))
  "Returns string type for a service object of type '<MorseEncrypt-request>"
  "morse_service/MorseEncryptRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MorseEncrypt-request)))
  "Returns string type for a service object of type 'MorseEncrypt-request"
  "morse_service/MorseEncryptRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MorseEncrypt-request>)))
  "Returns md5sum for a message object of type '<MorseEncrypt-request>"
  "1e5e7e36495a9dcab3e1ae207c3374b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MorseEncrypt-request)))
  "Returns md5sum for a message object of type 'MorseEncrypt-request"
  "1e5e7e36495a9dcab3e1ae207c3374b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MorseEncrypt-request>)))
  "Returns full string definition for message of type '<MorseEncrypt-request>"
  (cl:format cl:nil "string mes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MorseEncrypt-request)))
  "Returns full string definition for message of type 'MorseEncrypt-request"
  (cl:format cl:nil "string mes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MorseEncrypt-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MorseEncrypt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MorseEncrypt-request
    (cl:cons ':mes (mes msg))
))
;//! \htmlinclude MorseEncrypt-response.msg.html

(cl:defclass <MorseEncrypt-response> (roslisp-msg-protocol:ros-message)
  ((morse
    :reader morse
    :initarg :morse
    :type cl:string
    :initform ""))
)

(cl:defclass MorseEncrypt-response (<MorseEncrypt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MorseEncrypt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MorseEncrypt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morse_service-srv:<MorseEncrypt-response> is deprecated: use morse_service-srv:MorseEncrypt-response instead.")))

(cl:ensure-generic-function 'morse-val :lambda-list '(m))
(cl:defmethod morse-val ((m <MorseEncrypt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morse_service-srv:morse-val is deprecated.  Use morse_service-srv:morse instead.")
  (morse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MorseEncrypt-response>) ostream)
  "Serializes a message object of type '<MorseEncrypt-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'morse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'morse))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MorseEncrypt-response>) istream)
  "Deserializes a message object of type '<MorseEncrypt-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'morse) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'morse) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MorseEncrypt-response>)))
  "Returns string type for a service object of type '<MorseEncrypt-response>"
  "morse_service/MorseEncryptResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MorseEncrypt-response)))
  "Returns string type for a service object of type 'MorseEncrypt-response"
  "morse_service/MorseEncryptResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MorseEncrypt-response>)))
  "Returns md5sum for a message object of type '<MorseEncrypt-response>"
  "1e5e7e36495a9dcab3e1ae207c3374b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MorseEncrypt-response)))
  "Returns md5sum for a message object of type 'MorseEncrypt-response"
  "1e5e7e36495a9dcab3e1ae207c3374b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MorseEncrypt-response>)))
  "Returns full string definition for message of type '<MorseEncrypt-response>"
  (cl:format cl:nil "string morse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MorseEncrypt-response)))
  "Returns full string definition for message of type 'MorseEncrypt-response"
  (cl:format cl:nil "string morse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MorseEncrypt-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'morse))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MorseEncrypt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MorseEncrypt-response
    (cl:cons ':morse (morse msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MorseEncrypt)))
  'MorseEncrypt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MorseEncrypt)))
  'MorseEncrypt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MorseEncrypt)))
  "Returns string type for a service object of type '<MorseEncrypt>"
  "morse_service/MorseEncrypt")