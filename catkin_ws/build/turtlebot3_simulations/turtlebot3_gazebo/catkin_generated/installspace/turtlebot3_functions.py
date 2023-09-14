#!/usr/bin/env python3
import rospy
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

from gazebo_msgs.srv import SpawnModel, DeleteModel, DeleteModelRequest

#knapsack is just a number
knapsack = 0

def isEmpty():
    return knapsack == 0

def isPicked():
    return knapsack == 1

def pickUp():
    knapsack = 1

def remove():
    knapsack = 0

def distance(x1, y1, x2, y2):
    dist = ((x1 - x2) ** 2 + (y1 - y2) ** 2) ** .5
    return dist

def spawn_model(name, file_location='/home/dank/.gazebo/models/objects/red_ball.sdf', spawn_location=[0.0,0.0,1.0]):
    #rospy.init_node('spawn_model', log_level=rospy.INFO)
    pose = Pose()
    pose.position.x = spawn_location[0]
    pose.position.y = spawn_location[1]
    pose.position.z = spawn_location[2]
    spawn_model_client = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
    spawn_model_client(model_name = name,
                       model_xml = open(file_location, 'r').read(),
                       robot_namespace = '/stuff', initial_pose = pose, reference_frame = 'world')

def delete_model(name):
    # delete model
    srv = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)
    req = DeleteModelRequest()
    req.model_name = name
    resp = srv(req)


def movebase_client(x, y, w = 1.0):
    #moves the robot collision free to a x,y,theta pose (must be valid/reachable in the map)
    client = actionlib.SimpleActionClient('move_base',MoveBaseAction)
    client.wait_for_server()
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = x
    goal.target_pose.pose.position.y = y
    goal.target_pose.pose.position.z = 0.0
    goal.target_pose.pose.orientation.w = w
    #print("goal sent:")
    #print(goal)
    client.send_goal(goal)
    wait = client.wait_for_result()
    if not wait:
        rospy.logerr("Action server not available!")
        rospy.signal_shutdown("Action server not available!")
    else:
        return client.get_result()


def gps_location():
    # request a GPS like pose information from the Gazebo server
    rospy.loginfo("Requesting Global Robot Pose from Gazebo")
    model_state = rospy.wait_for_message("gazebo/model_states", ModelStates)
    me_pose = Pose()
    me_pose = model_state.pose[2]
    me_pose_angles = euler_from_quaternion([me_pose.orientation.x, me_pose.orientation.y, me_pose.orientation.z, me_pose.orientation.w])
    #print('My pose is (x,y,theta): ')
    #print(me_pose.position.x, me_pose.position.y, me_pose_angles[2])
    return me_pose.position.x, me_pose.position.y, me_pose_angles[2]


def find_objects():
    # request from Gazebo the global pose of all objects
    rospy.loginfo("Requesting Global Object Poses from Gazebo")
    model_state = rospy.wait_for_message("gazebo/model_states", ModelStates)
    number_of_objects = len(model_state.pose)  - 3 # ignore: [ground_plane, room1, turtlebot3_burger]    	  	   	
    #print('I found ' +str(number_of_objects) +' Objects')
    #print(model_state.name[3:])
    #print('They are at: ')
    object_pose = []
    for n in range(number_of_objects):
       object_pose.append(model_state.pose[3+n])
    #print(object_pose)
    return model_state.name[3:], model_state.pose[3:]


def pick_object(object_name, object_position):
    print('Trying to pick up: ' + object_name)
    me_pose = gps_location()
    object_x = object_position[0]
    object_y = object_position[1]	
    dist = distance(me_pose[0],me_pose[1],object_x,object_y)

    if dist <.35 and isEmpty:
        delete_model(object_name)
        time.sleep(0.4)
        spawn_model(name = object_name, spawn_location=[-1, 0, 2.0]) #put in knapsack
        pickUp()
        time.sleep(0.4)
        print('...successfully.')
        return 0
        
    else: 
        print('...unsuccessfully. Need to be closer to the object to pick it')
        return -1
        


def place_object(object_name, place_location):
    # delete selected object from bag and place it in gazebo
    me_pose = gps_location()
    dist2 = distance(me_pose[0], me_pose[1], place_location[0], place_location[1])
    # TODO: isPicked = fcn_that_checks_if_object_is_picked(object_name)
    if not isPicked: 
        print('Object is not with me...')
        return False
    if dist2 < 0.35:
        delete_model(object_name)
        spawn_model(name = object_name, spawn_location = place_location)
        delete_model(object_name)
        remove()
        print('Placed the object')
        return 0
    else: 
        print('Need to be closer to the location to place the object (and NOT on it!)') 
        return -1

def call_back(req):
    # sense
    my_pose = gps_location()
    object_names, object_poses = find_objects()

    #do all pickups
    for i in range(20):

        # navigate to pickup
        pick_object_name = 'red_ball' + str(i)
        print('I navigate to '+ pick_object_name)
        idx = object_names.index(pick_object_name) # find object pose by index
        pick_object_position = [object_poses[idx].position.x, object_poses[idx].position.y]
        pick_navigation_goal = [pick_object_position[0] -0.15 ,pick_object_position[1] -0.15]
        #print(pick_object_position)
        #print(pick_navigation_goal)

        result = movebase_client(pick_navigation_goal[0],pick_navigation_goal[1],1.0)
        if result:
            print("Reached Red Ball!")

        
        # pick: try 3 times
        attempt = 1
        while pick_object(pick_object_name,pick_object_position) < 0 and attempt < 4:
            object_names, object_poses = find_objects()
            idx = object_names.index(pick_object_name) # find object pose by index
            pick_object_position = [object_poses[idx].position.x, object_poses[idx].position.y]
            pick_navigation_goal = [pick_object_position[0]-0.15 ,pick_object_position[1]-0.15]
            result = movebase_client(pick_navigation_goal[0],pick_navigation_goal[1],1.0)
            time.sleep(5)
            if result:
                print("Reached Red Ball!")
            attempt += 1

        # navigate to dropoff 
        idx = object_names.index('blue_cube') # find blue_cube pose by index
        goal_object_position = [object_poses[idx].position.x, object_poses[idx].position.y]
        place_navigation_goal = [goal_object_position[0],goal_object_position[1]-0.15]
        result = movebase_client(place_navigation_goal[0],place_navigation_goal[1],1.0)
        if result:
            rospy.loginfo("Reached Trashcan!")
            
        # place
        attempt = 1
        while place_object(pick_object_name, [goal_object_position[0],goal_object_position[1],0.3]) < 0 and attempt < 4:
            attempt += 1
            result = movebase_client(place_navigation_goal[0],place_navigation_goal[1],1.0)
            time.sleep(5)
            if result:
                rospy.loginfo("Reached Trashcan!")
            
        
        print("Successfully moved the object")


if __name__ == '__main__':

    rospy.init_node('skills_server')
    s = rospy.Service('skills', skills, call_back)
    rospy.spin()
    

