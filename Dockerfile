FROM ros:kinetic-ros-core
MAINTAINER Kai Waelti <Kai.Waelti@dfki.de>

## TODO: Check back for rosdep keys and install
RUN apt-get update && apt-get install -y ros-indigo-navigation
# and replace above with below
#RUN apt-get update && apt-get install -y build-essential python-catkin-tools
#
#RUN mkdir -p /ros_ws/src
#
#WORKDIR /ros_ws/src
#
#RUN git clone -b indigo-devel https://github.com/ros-planning/navigation.git && \
#    git clone -b indigo-devel https://github.com/ros-perception/perception_pcl.git
#
#WORKDIR /ros_ws
#
#RUN apt-get install -y ros-indigo-tf
#
#SHELL ["/bin/bash", "-c"]	# Change to bash shell for ros stuff
#
#RUN source /opt/ros/indigo/setup.bash && \
#    rosdep install --from-paths src/ --ignore-src --rosdistro indigo -y && \
#    catkin init && \
#    catkin config --install -j 1 -p 1 && \
#    catkin_make

COPY launch-files /launch-files
COPY run-shells /run-shells
COPY config /config

WORKDIR /root
COPY entrypoint.sh .

ENTRYPOINT ["/root/entrypoint.sh"]

ENV ROS_MASTER_URI "http://ros-master:11311"

CMD ["bash"]

