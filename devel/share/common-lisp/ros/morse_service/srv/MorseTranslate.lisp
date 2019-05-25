; Auto-generated. Do not edit!


(cl:in-package morse_service-srv)


;//! \htmlinclude MorseTranslate-request.msg.html

(cl:defclass <MorseTranslate-request> (roslisp-msg-protocol:ros-message)
  ((morse
    :reader morse
    :initarg :morse
    :type cl:string
    :initform ""))
)

(cl:defclass MorseTranslate-request (<MorseTranslate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MorseTranslate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MorseTranslate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morse_service-srv:<MorseTranslate-request> is deprecated: use morse_service-srv:MorseTranslate-request instead.")))

(cl:ensure-generic-function 'morse-val :lambda-list '(m))
(cl:defmethod morse-val ((m <MorseTranslate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morse_service-srv:morse-val is deprecated.  Use morse_service-srv:morse instead.")
  (morse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MorseTranslate-request>) ostream)
  "Serializes a message object of type '<MorseTranslate-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'morse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'morse))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MorseTranslate-request>) istream)
  "Deserializes a message object of type '<MorseTranslate-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MorseTranslate-request>)))
  "Returns string type for a service object of type '<MorseTranslate-request>"
  "morse_service/MorseTranslateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MorseTranslate-request)))
  "Returns string type for a service object of type 'MorseTranslate-request"
  "morse_service/MorseTranslateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MorseTranslate-request>)))
  "Returns md5sum for a message object of type '<MorseTranslate-request>"
  "c78a90a3ea05e29b7697d19c62ed1c62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MorseTranslate-request)))
  "Returns md5sum for a message object of type 'MorseTranslate-request"
  "c78a90a3ea05e29b7697d19c62ed1c62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MorseTranslate-request>)))
  "Returns full string definition for message of type '<MorseTranslate-request>"
  (cl:format cl:nil "string morse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MorseTranslate-request)))
  "Returns full string definition for message of type 'MorseTranslate-request"
  (cl:format cl:nil "string morse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MorseTranslate-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'morse))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MorseTranslate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MorseTranslate-request
    (cl:cons ':morse (morse msg))
))
;//! \htmlinclude MorseTranslate-response.msg.html

(cl:defclass <MorseTranslate-response> (roslisp-msg-protocol:ros-message)
  ((mes
    :reader mes
    :initarg :mes
    :type cl:string
    :initform ""))
)

(cl:defclass MorseTranslate-response (<MorseTranslate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MorseTranslate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MorseTranslate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morse_service-srv:<MorseTranslate-response> is deprecated: use morse_service-srv:MorseTranslate-response instead.")))

(cl:ensure-generic-function 'mes-val :lambda-list '(m))
(cl:defmethod mes-val ((m <MorseTranslate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morse_service-srv:mes-val is deprecated.  Use morse_service-srv:mes instead.")
  (mes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MorseTranslate-response>) ostream)
  "Serializes a message object of type '<MorseTranslate-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MorseTranslate-response>) istream)
  "Deserializes a message object of type '<MorseTranslate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MorseTranslate-response>)))
  "Returns string type for a service object of type '<MorseTranslate-response>"
  "morse_service/MorseTranslateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MorseTranslate-response)))
  "Returns string type for a service object of type 'MorseTranslate-response"
  "morse_service/MorseTranslateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MorseTranslate-response>)))
  "Returns md5sum for a message object of type '<MorseTranslate-response>"
  "c78a90a3ea05e29b7697d19c62ed1c62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MorseTranslate-response)))
  "Returns md5sum for a message object of type 'MorseTranslate-response"
  "c78a90a3ea05e29b7697d19c62ed1c62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MorseTranslate-response>)))
  "Returns full string definition for message of type '<MorseTranslate-response>"
  (cl:format cl:nil "string mes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MorseTranslate-response)))
  "Returns full string definition for message of type 'MorseTranslate-response"
  (cl:format cl:nil "string mes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MorseTranslate-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MorseTranslate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MorseTranslate-response
    (cl:cons ':mes (mes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MorseTranslate)))
  'MorseTranslate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MorseTranslate)))
  'MorseTranslate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MorseTranslate)))
  "Returns string type for a service object of type '<MorseTranslate>"
  "morse_service/MorseTranslate")