import time
import random
import sys

from naoqi import ALProxy

argvs = sys.argv 
ip = argvs[1]
port = int(argvs[2])
REPEAT = int(argvs[3])

try:
  motion_proxy = ALProxy('ALMotion',ip,port)
except:
  quit()

part = 'Body'
# body_names = motion_proxy.getBodyNames(part)
body_names = [\
    'HeadYaw', 'HeadPitch',\
    'LShoulderPitch', 'LShoulderRoll', 'LElbowYaw', 'LElbowRoll', 'LWristYaw', 'LHand', \
    'RShoulderPitch', 'RShoulderRoll', 'RElbowYaw', 'RElbowRoll', 'RWristYaw', 'RHand']
body_limits = [motion_proxy.getLimits(l)[0] for l in body_names]
body_limits_angles = [ [l[0],l[1]] for l in body_limits]

#stiffen to move
motion_proxy.setStiffnesses(part,1.0)

for i in range(REPEAT):
	target_angles = [(angles[1]-angles[0])*random.uniform(0.15,0.85)+angles[0] for angles in body_limits_angles]
	fractionMaxSpeed = random.random()*0.5+0.1
	motion_proxy.setAngles(body_names,target_angles,fractionMaxSpeed)

	time.sleep(random.random())