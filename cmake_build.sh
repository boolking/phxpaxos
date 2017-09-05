pushd third_party/glog
CFLAGS="-m64" CXXFLAGS="-m64" ./configure --prefix=$(pwd)
if [ $? -ne 0 ]; then
	echo "failed to configure glog"
	return
fi
popd

mkdir build && cd build
cmake -G "Ninja" ..
if [ $? -ne 0 ]; then
	echo "failed to run cmake"
	return
fi
ninja