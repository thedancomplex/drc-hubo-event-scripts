sudo ls > /dev/null
HUBO_INSTALL_ROOT=$('pwd')
cd defaults
rm -R -f repos
./install-dep.sh
source ~/.bashrc
./install-hubo-ach.sh
./install-hubo-motion-rt.sh
hubo-ach install sim-drc
./install-hubo-ros.sh
cd $HUBO_INSTALL_ROOT
source ~/.bashrc
