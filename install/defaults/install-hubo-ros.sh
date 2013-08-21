sudo ls > /dev/null

# make catkin workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
git clone https://github.com/hubo/hubo_ros_core --recursive
git clone https://github.com/hubo/hubo_init/ --recursive
cd ~/catkin_ws/
catkin_make
source ~/catkin_ws/devel/setup.bash
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
