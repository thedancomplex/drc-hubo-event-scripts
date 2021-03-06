sudo ls > /dev/null
sudo apt-get install python-setuptools python-dev build-essential
sudo easy_install -U mercurial
mkdir repos
cd repos
git clone https://github.com/hubo/hubo-motion-rt --recursive
git clone https://github.com/hubo/RobotKin --recursive
HUBO_MOTION_ROOT=$('pwd')

# ----------------
# Install RobotKin
# ----------------
mkdir libraries
cd libraries

# You can set the install path to any you want (e.g /usr/local)
#export ROBOTKIN_DEP_INSTALL_PATH=`pwd`/install
export ROBOTKIN_DEP_INSTALL_PATH=/usr/local
export CMAKE_PREFIX_PATH=$ROBOTKIN_INSTALL_PATH:$CMAKE_PREFIX_PATH

# Set the following for runtime
export LD_LIBRARY_PATH=$ROBOTKIN_INSTALL_PATH/lib:$LD_LIBRARY_PATH

hg clone https://bitbucket.org/osrf/urdfdom_headers
mkdir urdfdom_headers/build && cd urdfdom_headers/build
sudo cmake -DCMAKE_INSTALL_PREFIX:PATH=$ROBOTKIN_DEP_INSTALL_PATH ..
sudo make install
cd ../..

git clone https://github.com/ros/console_bridge.git
mkdir console_bridge/build && cd console_bridge/build
sudo cmake -DCMAKE_INSTALL_PREFIX:PATH=$ROBOTKIN_DEP_INSTALL_PATH ..
sudo make install
cd ../..

hg clone https://bitbucket.org/osrf/urdfdom
mkdir urdfdom/build && cd urdfdom/build
sudo cmake -DCMAKE_INSTALL_PREFIX:PATH=$ROBOTKIN_DEP_INSTALL_PATH ..
sudo make install
cd ../..

cd $HUBO_MOTION_ROOT
cd RobotKin
mkdir build
cd build
cmake ..
make
sudo make install


# ----------------
# Install MotionRT
# ----------------
cd $HUBO_MOTION_ROOT
cd hubo-motion-rt
mkdir m4
autoreconf -i
./configure
make
sudo make install
