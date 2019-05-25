
(cl:in-package :asdf)

(defsystem "morse_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MorseEncrypt" :depends-on ("_package_MorseEncrypt"))
    (:file "_package_MorseEncrypt" :depends-on ("_package"))
    (:file "MorseTranslate" :depends-on ("_package_MorseTranslate"))
    (:file "_package_MorseTranslate" :depends-on ("_package"))
  ))