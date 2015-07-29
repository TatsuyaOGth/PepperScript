from naoqi import ALProxy
import sys


argvs = sys.argv 
ip = argvs[1]
port = int(argvs[2])

try:
	motion_proxy = ALProxy('ALMotion',ip,port)
except Exception as e:
	quit()
  
motion_proxy.setExternalCollisionProtectionEnabled('All', True)
motion_proxy.rest()
