copy /y third_party\leveldb_win\port\port.h third_party\leveldb\port
copy /y third_party\glog_win\port.* third_party\glog\src\windows
copy /y third_party\glog_win\logging.cc third_party\glog\src

mkdir build
cd build
cmake -G "Visual Studio 15 2017" ..