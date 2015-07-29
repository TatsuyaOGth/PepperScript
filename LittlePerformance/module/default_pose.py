import time
import random
import sys

from naoqi import ALProxy

argvs = sys.argv 
ip = argvs[1]
port = int(argvs[2])
speed = float(argvs[3])

try:
  motion_proxy = ALProxy('ALMotion',ip,port)
except:
  quit()

part = 'Body'
body_names = motion_proxy.getBodyNames(part)


motion_proxy.moveInit()
motion_proxy.setAngles('HeadYaw',         0.0, speed)
motion_proxy.setAngles('HeadPitch',       0.0, speed)
motion_proxy.setAngles('LShoulderPitch',  1.4, speed)
motion_proxy.setAngles('LShoulderRoll',   0.0, speed)
motion_proxy.setAngles('LElbowYaw',       0.0, speed)
motion_proxy.setAngles('LElbowRoll',      0.0, speed)
motion_proxy.setAngles('LWristYaw',       -1.5, speed)
motion_proxy.setAngles('LHand',           0.5, speed)
motion_proxy.setAngles('HipRoll',         0.0, speed)
motion_proxy.setAngles('HipPitch',        0.0, speed)
motion_proxy.setAngles('KneePitch',       -0.2, speed)
motion_proxy.setAngles('RShoulderPitch',  1.4, speed)
motion_proxy.setAngles('RShoulderRoll',   0.0, speed)
motion_proxy.setAngles('RElbowYaw',       1.5, speed)
motion_proxy.setAngles('RElbowRoll',      0.0, speed)
motion_proxy.setAngles('RWristYaw',       0.0, speed)
motion_proxy.setAngles('RHand',           0.5, speed)
motion_proxy.setAngles('WheelFL',         0.0, speed)
motion_proxy.setAngles('WheelFR',         0.0, speed)
motion_proxy.setAngles('WheelB',          0.0, speed)

