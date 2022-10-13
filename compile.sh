

BUILD_DIR=build


PROJECT_HOME=$(pwd)
mkdir $BUILD_DIR
cd $BUILD_DIR
cmake ..
make

cd $PROJECT_HOME/bin
# ./qt_test