#!/usr/bin/env python

import rospy
from morse_service.srv import*

def morseEncrypt(request):
    requestM = request.mes.upper() 
    toCode = ''
    wordsList = requestM.split()
    morseDict = {
        'A':'._','B':'_..',
        'C':'_._.','D':'_..',
        'E':'.','F':'.._.',
        'G':'__.','H':'....',
        'I':'..','J':'.___',
        'K':'_._','L':'._..',
        'M':'__','N':'_.',
        'O':'___','P':'.__.',
        'Q':'__._','R':'._.',
        'S':'...','T':'_',
        'U':'.._','V':'..._',
        'W':'.__','X':'_.._',
        'Y':'_.__','Z':'__..'
    } 
    for i in range(len(wordsList)):
        #print len(wordsList[i])
        for j in range(len(wordsList[i])):
            if wordsList[i][j] in morseDict:
                toCode+=(morseDict[wordsList[i][j]]+" ")
            else:
                print"Error!"
        toCode+='/ '
    return MorseEncryptResponse(toCode)
def handleIt():
    rospy.init_node('morse_encrypter')
    service=rospy.Service('morse_encrypt_service',MorseEncrypt,morseEncrypt)
    print"Ready to encrypt!"
    rospy.spin()

if __name__ == "__main__":
    handleIt()
