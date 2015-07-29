import time
import sys
from naoqi import ALProxy

args = sys.argv
IP = args[1]
PORT = int(args[2])

moveToX = float(args[3])
moveToY = float(args[4])
moveToR = float(args[5])
delay = float(args[6])


# motion = ALProxy('ALMotion',IP,PORT)
try:
	motion = ALProxy('ALMotion',IP,PORT)
except Exception as e:
	quit()


motion.positionErrorThresholdPos = 0.0
motion.positionErrorThresholdAng = 0.0


def MoveTo(distX, distY, rotate):
	print "Move To:"
	print distX
	print distY
	print rotate

	import almath
	initPosition = almath.Pose2D(motion.getRobotPosition(True))
	targetDistance = almath.Pose2D(distX, distY, rotate * almath.PI / 180)
	expectedEndPosition = initPosition * targetDistance
	enableArms = False
	motion.setMoveArmsEnabled(enableArms, enableArms)
	motion.moveTo(distX, distY, rotate * almath.PI / 180)



# main
time.sleep(delay)
MoveTo(distX=moveToX, distY=moveToY, rotate=moveToR)


