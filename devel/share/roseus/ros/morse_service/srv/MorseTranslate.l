;; Auto-generated. Do not edit!


(when (boundp 'morse_service::MorseTranslate)
  (if (not (find-package "MORSE_SERVICE"))
    (make-package "MORSE_SERVICE"))
  (shadow 'MorseTranslate (find-package "MORSE_SERVICE")))
(unless (find-package "MORSE_SERVICE::MORSETRANSLATE")
  (make-package "MORSE_SERVICE::MORSETRANSLATE"))
(unless (find-package "MORSE_SERVICE::MORSETRANSLATEREQUEST")
  (make-package "MORSE_SERVICE::MORSETRANSLATEREQUEST"))
(unless (find-package "MORSE_SERVICE::MORSETRANSLATERESPONSE")
  (make-package "MORSE_SERVICE::MORSETRANSLATERESPONSE"))

(in-package "ROS")





(defclass morse_service::MorseTranslateRequest
  :super ros::object
  :slots (_morse ))

(defmethod morse_service::MorseTranslateRequest
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

(defclass morse_service::MorseTranslateResponse
  :super ros::object
  :slots (_mes ))

(defmethod morse_service::MorseTranslateResponse
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

(defclass morse_service::MorseTranslate
  :super ros::object
  :slots ())

(setf (get morse_service::MorseTranslate :md5sum-) "c78a90a3ea05e29b7697d19c62ed1c62")
(setf (get morse_service::MorseTranslate :datatype-) "morse_service/MorseTranslate")
(setf (get morse_service::MorseTranslate :request) morse_service::MorseTranslateRequest)
(setf (get morse_service::MorseTranslate :response) morse_service::MorseTranslateResponse)

(defmethod morse_service::MorseTranslateRequest
  (:response () (instance morse_service::MorseTranslateResponse :init)))

(setf (get morse_service::MorseTranslateRequest :md5sum-) "c78a90a3ea05e29b7697d19c62ed1c62")
(setf (get morse_service::MorseTranslateRequest :datatype-) "morse_service/MorseTranslateRequest")
(setf (get morse_service::MorseTranslateRequest :definition-)
      "string morse
---
string mes

")

(setf (get morse_service::MorseTranslateResponse :md5sum-) "c78a90a3ea05e29b7697d19c62ed1c62")
(setf (get morse_service::MorseTranslateResponse :datatype-) "morse_service/MorseTranslateResponse")
(setf (get morse_service::MorseTranslateResponse :definition-)
      "string morse
---
string mes

")



(provide :morse_service/MorseTranslate "c78a90a3ea05e29b7697d19c62ed1c62")


