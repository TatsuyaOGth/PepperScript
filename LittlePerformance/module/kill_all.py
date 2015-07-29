from naoqi import ALProxy
import sys

argvs = sys.argv 
ip = argvs[1]
port = int(argvs[2])

try:
  motion_proxy = ALProxy('ALMotion', ip, port)
except:
  quit()
motion_proxy.killAll()
motion_proxy.moveInit()
