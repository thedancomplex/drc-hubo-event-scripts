sudo ls > /dev/null
HUBO_INSTALL_ROOT=$('pwd')
cd defaults
rm -R -f repos
./install-dep.sh
./install-hubo-ach.sh
./install-hubo-motion-rt.sh
cd $HUBO_INSTALL_ROOT
