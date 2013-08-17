sudo ls > /dev/null
mkdir repos
cd repos
git clone https://github.com/hubo/hubo-ach.git
cd hubo-ach/drivers
tar -xzf peak-linux-driver-7.7.tar.gz
cd peak-linux-driver-7.7
cat /lib/modules/$(uname -r)/build/include/linux/version.h
sudo make clean
sudo make
sudo make install
sudo /sbin/modprobe pcan
cd ../
cd ../
autoreconf -i
./hubo-ach-install.sh
