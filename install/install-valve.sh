sudo ls > /dev/null
source ~/.bashrc
HUBO_INSTALL_ROOT=$('pwd')
cd valve
./install-valve.sh
cd $HUBO_INSTALL_ROOT
