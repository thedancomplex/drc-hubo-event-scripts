sudo ls > /dev/null
sudo apt-get install expat
sudo apt-get install freeglut3
sudo apt-get install freeglut3-dev
sudo apt-get install ros-groovy-moveit-msgs
sudo apt-get install ros-groovy-control-msgs
mkdir repos
cd repos
HUBO_WALLBREAK_ROOT=$('pwd')
../get-repo-wallbreak.sh

# Install Hubo_init, joystick intergrator, hubo_walk
cd ~/catkin_ws/src
git clone https://github.com/hubo/hubo_init.git --recursive
git clone https://github.com/hubo/joystick_integrator --recursive
git clone https://github.com/hubo/hubo_walk --recursive
git clone https://github.com/hubo/hubo_motion_ros --recursive
git clone https://github.com/hubo/hubo_walk --recursive
cd ~/catkin_ws
catkin_make
cd $HUBO_WALLBREAK_ROOT

# Install HuboMZ
cd hubomz
./setup.sh

cd $HUBO_WALLBREAK_ROOT
cd joystick_integrator

