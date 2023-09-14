#!/usr/bin/env python3
from gazebo_msgs.srv import SpawnModel, DeleteModel, DeleteModelRequest
import rospy
from geometry_msgs.msg import Pose
from gazebo_msgs.msg import ModelStates, ModelState
import time
import random
from turtlebot3_gazebo.srv import goal , goalRequest

def goal_checker_callback(info):

    #simply checks the number of balls placed (if not 0 then some balls were not placed)
    if info.info == 0:
        return("Goal succesfully reached")

    return("Goal NOT reached")
    
if __name__ == '__main__':
    rospy.init_node('goal_checker_server')
    s = rospy.Service('goal', goal, goal_checker_callback)
    rospy.spin()