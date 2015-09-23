OUT_DIR_NAME=patches
OUT_DIR_PATH=~/$OUT_DIR_NAME
DEPLOY_PATH=~/deploy/current/odl

cd ~
sudo rm -rf $OUT_DIR_PATH
mkdir -p $OUT_DIR_PATH
cp ~/all.tar.gz $OUT_DIR_PATH
cd $OUT_DIR_PATH
sudo tar -xvf all.tar.gz
sudo cp patch_files.sh $DEPLOY_PATH
cd $DEPLOY_PATH
sudo killall java
sudo rm -rf ./data ./journal ./snapshots ./cache
sudo ./patch_files.sh $OUT_DIR_PATH
./bin/start
