import rospy
import sys
import actionlib
import numpy as np
import random
import copy
import time
from geometry_msgs.msg import Point, Pose
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from gazebo_msgs.msg import ModelStates, ModelState
from tf.transformations import quaternion_from_euler, euler_from_quaternion
from turtlebot3_gazebo.srv import skills
from turtlebot3_gazebo.srv import env



def env_setup():

    try:
        env_service = rospy.ServiceProxy('env', env)
        env_service()
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


def skills():
    try:
        cleaner_service = rospy.ServiceProxy('skills', skills)
        cleaner_service()
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)



if __name__ == "__main__":
    env_setup()
    time.sleep(8)
    skills()