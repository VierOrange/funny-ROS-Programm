#!/usr/bin/env python

import rospy
import __future__

from morse_service.srv import *

def translateCode(request):
    wordsList = request.morse.split()
    toString=""
    morseDict = {
        '._':'A','_..':'B',
        '_._.':'C','_..':'D',
        '.':'E','.._.':'F',
        '__.':'G','....':'H',
        '..':'I','.___':'J',
        '_._':'K','._..':'L',
        '__':'M','_.':'N',
        '___':'O','.__.':'P',
        '__._':'Q','._.':'R',
        '...':'S','_':'T',
        '.._':'U','..._':'V',
        '.__':'W','_.._':'X',
        '_.__':'Y','__..':'Z'
    }
    dKey = morseDict.keys()
    for i in range(len(wordsList)):
        if wordsList[i] == '/':
            toString+=' '
        elif wordsList[i] in dKey:
            toString+=morseDict[wordsList[i]]
        else:
            print("Error!")
            return 0
    return MorseTranslateResponse(toString)

def handleIt():
    rospy.init_node('morse_server')
    service = rospy.Service('morse_service', MorseTranslate,translateCode) 
    print("Ready to do a translate!")
    rospy.spin()


if __name__ == "__main__":
     handleIt()

