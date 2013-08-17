export ROS_MASTER_URI=http://192.168.0.212:11311/
export ROS_HOSTNAME=$(ifconfig eth0 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}')
