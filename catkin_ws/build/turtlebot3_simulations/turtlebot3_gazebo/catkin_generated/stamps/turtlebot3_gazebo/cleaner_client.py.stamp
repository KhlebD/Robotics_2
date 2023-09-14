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
from turtlebot3_gazebo.srv import skills, env, goal, skillsResponse



def env_setup():

    try:
        env_service = rospy.ServiceProxy('env', env)
        res = env_service()
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


def skills_setup():
    try:
        sklls_service = rospy.ServiceProxy('skills', skills)
        res = sklls_service()
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def goal_checker_setup(place_num):
    try:
        goal_service = rospy.ServiceProxy('goal', goal)
        res = goal_service(place_num)
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)



if __name__ == "__main__":

    env_result = env_setup()
    #the skills result is used by the goal checker
    skills_result = skills_setup()
    goal_result = goal_checker_setup(skills_result.result)
    print (goal_result)

