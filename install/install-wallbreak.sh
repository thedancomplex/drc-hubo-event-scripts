sudo ls > /dev/null
source ~/.bashrc
HUBO_INSTALL_ROOT=$('pwd')
cd wallbreak
./install-wallbreak.sh
cd $HUBO_INSTALL_ROOT
