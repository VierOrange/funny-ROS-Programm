#!/usr/bin/env python
import rospy
import time
from morse_service.srv import MorseTranslate,MorseEncrypt
import sys

def morse_client(str_0):
    rospy.init_node('morse_client')
    rospy.wait_for_service('morse_service')
    try:
        morse_service_proxy = rospy.ServiceProxy('morse_service',MorseTranslate)
        morseC = str_0
        text = morse_service_proxy(morseC)
        return text.mes
    except rospy.ServiceException as e:
        print "Service call failed: {}".format(e)
        sys.exit(0)
def morse_client_E(str_0):
    rospy.init_node('morse_client_E')
    rospy.wait_for_service('morse_encrypt_service')
    try:
        encrypter = rospy.ServiceProxy('morse_encrypt_service',MorseEncrypt)
        morseT = str_0
        code = encrypter(morseT)
        return code.morse
    except rospy.ServiceException as e:
        print"Service call failed: {}".format(e)
        sys.exit(0)

def progressBar():
    sys.stdout.write("Requesting")
    sys.stdout.flush() 
    for i in range(3):
        time.sleep(1)
        sys.stdout.write('.')
        sys.stdout.flush()


if __name__ == "__main__":
    string_0 = ' '.join(sys.argv[1:]) 
    if '.' in string_0: 
        print "Code: "+string_0 
        progressBar()
        print "\nText: "+morse_client(string_0)+"\nTranslate complete!" 
    else:
        print "Text: "+string_0 
        progressBar()
        print "\nCode: "+morse_client_E(string_0)+"\nEncrypt complete!" 
