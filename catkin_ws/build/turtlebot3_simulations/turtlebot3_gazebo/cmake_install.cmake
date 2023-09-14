# Install script for directory: /home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dank/Desktop/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo/srv" TYPE FILE FILES
    "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/srv/skills.srv"
    "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/srv/env.srv"
    "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/srv/goal.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo/cmake" TYPE FILE FILES "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazebo-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dank/Desktop/catkin_ws/devel/include/turtlebot3_gazebo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dank/Desktop/catkin_ws/devel/share/roseus/ros/turtlebot3_gazebo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dank/Desktop/catkin_ws/devel/share/common-lisp/ros/turtlebot3_gazebo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dank/Desktop/catkin_ws/devel/share/gennodejs/ros/turtlebot3_gazebo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/dank/Desktop/catkin_ws/devel/lib/python3/dist-packages/turtlebot3_gazebo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/dank/Desktop/catkin_ws/devel/lib/python3/dist-packages/turtlebot3_gazebo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazebo.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo/cmake" TYPE FILE FILES "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazebo-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo/cmake" TYPE FILE FILES
    "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazeboConfig.cmake"
    "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/turtlebot3_gazeboConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo" TYPE FILE FILES "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/turtlebot3_gazebo" TYPE DIRECTORY FILES "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/include/turtlebot3_gazebo/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_gazebo" TYPE DIRECTORY FILES
    "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/launch"
    "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models"
    "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/rviz"
    "/home/dank/Desktop/catkin_ws/src/turtlebot3_simulations/turtlebot3_gazebo/worlds"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo" TYPE PROGRAM FILES "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/skills.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo" TYPE PROGRAM FILES "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/env.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo" TYPE PROGRAM FILES "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/goal_checker.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_gazebo" TYPE PROGRAM FILES "/home/dank/Desktop/catkin_ws/build/turtlebot3_simulations/turtlebot3_gazebo/catkin_generated/installspace/cleaner_client.py")
endif()

