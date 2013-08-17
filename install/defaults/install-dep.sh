sudo ls > /dev/null
mkdir tmp
cd tmp
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install python-dev
sudo apt-get install linux-headers-$(uname -r)
rm tmp.hubo-ach
rm sources.list.hubo-ach
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bk-pre-ach
echo 'deb http://code.golems.org/debian precise golems.org' >> tmp.hubo-ach
cat /etc/apt/sources.list | cat - tmp.hubo-ach >> sources.list.hubo-ach
sudo mv sources.list.hubo-ach /etc/apt/sources.list
rm tmp.hubo-ach
rm sources.list.hubo-ach
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install git-core
sudo apt-get install libach1 libach-dev
sudo apt-get install ach-utils
sudo apt-get install autoconf automake libtool autoconf-archive
sudo apt-get install libreadline-dev
sudo apt-get install gcc
sudo apt-get install g++
sudo apt-get install libpopt-dev
source ~/.bashrc
sudo apt-get install python-pip
sudo pip install http://code.golems.org/src/ach/py_ach-latest.tar.gz
sudo apt-get install ros-groovy-desktop-full
sudo apt-get install libeigen3-dev
sudo apt-get install autoconf automake libtool autoconf-archive
# Catkin
sudo apt-get install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev build-essential
sudo apt-get install ros-groovy-catkin
echo 'source /opt/ros/groovy/setup.bash' ~/.bashrc
source ~/.bashrc
