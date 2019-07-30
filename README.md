# move_base ROS Compiled for ros-kinetic-mb

Run this container to plan and execute paths using the Mobility Base and a map.

## Getting image

To get the image from RepoHub

```
docker pull repohub.enterpriselab.ch:5002/kawa/ros-kinetic-mb-movebase:latest
```

Execute the following commands to build the container yourself

```
git clone
https://gitlab.enterpriselab.ch/mt-kawa/ros-kinetic-mb-docker/ros-kinetic-mb-movebase-docker.git
cd ros-kinetic-mb-movebase-docker
docker build -t ros-kinetic-mb-movebase:latest .
```

## Run Navigation
### Requirements
+ driver node
+ odometry
+ map (either SLAM or map_server)


To run navigation run the following commands

```
docker run -it ros-kinetic-mb-movebase roslaunch /launch-files/mb-navigation.launch
```

