sdo ls > /dev/null
mkdir ~/catkin_ws
cp get-repo-valve.sh ~/catkin_ws/
cp rm-repo-valve.sh ~/catkin_ws/
cd ~/catkin_ws
mkdir src
rm CMakeLists.txt
cd ~/catkin_ws/src
catkin_init_workspace
. ../rm-repo-valve.sh
. ../get-repo-valve.sh
cd ~/catkin_ws
rospack profile
source ~/catkin_ws/devel/setup.sh
catkin_make
catkin_make
rm get-repo-valve.sh
rm rm-repo-valve.sh
