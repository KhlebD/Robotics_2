#!/usr/bin/env python3
from gazebo_msgs.srv import SpawnModel, DeleteModel, DeleteModelRequest
import rospy
from geometry_msgs.msg import Pose
from gazebo_msgs.msg import ModelStates, ModelState
import time
import random
from turtlebot3_gazebo.srv import env

def initialize_environment():
    rospy.init_node('env', log_level = rospy.WARN)

def create_scene(info):  
    delete_model('blue_cube') 
    time.sleep(1) 
    spawn_locations = randomizer()# spawn balls at random     
    for n in range(len(spawn_locations)):
        delete_model('red_ball'+str(n)) 
        time.sleep(.5)
        spawn_model('red_ball'+str(n), '/home/dank/.gazebo/models/objects/red_ball.sdf', spawn_locations[n])
    spawn_model('blue_cube', '/home/dank/.gazebo/models/objects/blue_cube.sdf', [1.5,0.3,1] ) 
    return ""		

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



      

#Pick random postions for red balls spawn
#The house is divided into 6 "rooms"
def randomizer():
    x = 0
    y = 0 
    z = 0.2
    spawn_locations = []
    room_number = random.randint(1,6)# randomly choose a room

    #a ball spawns somewhere inside the chosen room, between some specific x and y values in the room
    for i in range (3):
        if room_number == 1:
            x = random.uniform(-1.7, -0.5)
            y = random.uniform(1.2, 3)
        if room_number == 2:
            x = random.uniform(0.8, 2.3)
            y = random.uniform(1.2, 3.6)
        if room_number == 3:
            x = random.uniform(3.3, 4.7)
            y = random.uniform(1.2, 3.6)
        if room_number == 4:
            x = random.uniform(2.9, 4.7)
            y = random.uniform(-2.1, -4.2)
        if room_number == 5:
            x = random.uniform(-1.75, 2)
            y = random.uniform(-1.7, -4.2)
        if room_number == 6:
            x = random.uniform(4.3, 4.7)
            y = random.uniform(-1.1, 0)

        location = [x, y, z]
        spawn_locations.append(location)
        room_number = random.randint(1,6)# randomly choose a room

    return spawn_locations    

def goal_checker():

    rospy.loginfo("Requesting Global Object Poses from Gazebo")
    model_state = rospy.wait_for_message("gazebo/model_states", ModelStates)
    number_of_objects = len(model_state.pose) - 3 # ignore: [ground_plane, room1, turtlebot3_burger] 

    if number_of_objects == 1:
        print("Goal succesfully reached")
        return 0

    print("Goal NOT reached")
    return -1 
    

if __name__ == '__main__':
    
    initialize_environment()
    s = rospy.Service('env', env, create_scene)
    rospy.spin()


    

