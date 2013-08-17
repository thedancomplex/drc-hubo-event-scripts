sudo ls > /dev/null
export ROS_MASTER_URI=http://192.168.0.212:11311/
sudo service hubo-motion start
roslaunch hubo_launch full_body_feedback_node.launch
