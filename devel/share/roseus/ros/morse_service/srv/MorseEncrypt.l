;; Auto-generated. Do not edit!


(when (boundp 'morse_service::MorseEncrypt)
  (if (not (find-package "MORSE_SERVICE"))
    (make-package "MORSE_SERVICE"))
  (shadow 'MorseEncrypt (find-package "MORSE_SERVICE")))
(unless (find-package "MORSE_SERVICE::MORSEENCRYPT")
  (make-package "MORSE_SERVICE::MORSEENCRYPT"))
(unless (find-package "MORSE_SERVICE::MORSEENCRYPTREQUEST")
  (make-package "MORSE_SERVICE::MORSEENCRYPTREQUEST"))
(unless (find-package "MORSE_SERVICE::MORSEENCRYPTRESPONSE")
  (make-package "MORSE_SERVICE::MORSEENCRYPTRESPONSE"))

(in-package "ROS")





(defclass morse_service::MorseEncryptRequest
  :super ros::object
  :slots (_mes ))

(defmethod morse_service::MorseEncryptRequest
  (:init
   (&key
    ((:mes __mes) "")
    )
   (send-super :init)
   (setq _mes (string __mes))
   self)
  (:mes
   (&optional __mes)
   (if __mes (setq _mes __mes)) _mes)
  (:serialization-length
   ()
   (+
    ;; string _mes
    4 (length _mes)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mes
       (write-long (length _mes) s) (princ _mes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass morse_service::MorseEncryptResponse
  :super ros::object
  :slots (_morse ))

(defmethod morse_service::MorseEncryptResponse
  (:init
   (&key
    ((:morse __morse) "")
    )
   (send-super :init)
   (setq _morse (string __morse))
   self)
  (:morse
   (&optional __morse)
   (if __morse (setq _morse __morse)) _morse)
  (:serialization-length
   ()
   (+
    ;; string _morse
    4 (length _morse)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _morse
       (write-long (length _morse) s) (princ _morse s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _morse
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _morse (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass morse_service::MorseEncrypt
  :super ros::object
  :slots ())

(setf (get morse_service::MorseEncrypt :md5sum-) "1e5e7e36495a9dcab3e1ae207c3374b3")
(setf (get morse_service::MorseEncrypt :datatype-) "morse_service/MorseEncrypt")
(setf (get morse_service::MorseEncrypt :request) morse_service::MorseEncryptRequest)
(setf (get morse_service::MorseEncrypt :response) morse_service::MorseEncryptResponse)

(defmethod morse_service::MorseEncryptRequest
  (:response () (instance morse_service::MorseEncryptResponse :init)))

(setf (get morse_service::MorseEncryptRequest :md5sum-) "1e5e7e36495a9dcab3e1ae207c3374b3")
(setf (get morse_service::MorseEncryptRequest :datatype-) "morse_service/MorseEncryptRequest")
(setf (get morse_service::MorseEncryptRequest :definition-)
      "string mes
---
string morse
")

(setf (get morse_service::MorseEncryptResponse :md5sum-) "1e5e7e36495a9dcab3e1ae207c3374b3")
(setf (get morse_service::MorseEncryptResponse :datatype-) "morse_service/MorseEncryptResponse")
(setf (get morse_service::MorseEncryptResponse :definition-)
      "string mes
---
string morse
")



(provide :morse_service/MorseEncrypt "1e5e7e36495a9dcab3e1ae207c3374b3")


