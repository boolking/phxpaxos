cmake_minimum_required(VERSION 3.6)
project(phxpaxos)

set (CMAKE_CXX_STANDARD 11)
# add compiler definitions for msvs
if(MSVC)
    add_definitions(-D_WINSOCK_DEPRECATED_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_WARNINGS)
elseif(UNIX)
    set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-pthread -pipe -Wall -fPIC -Wno-unused-local-typedefs")
    set(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS} "-pthread -Wl,--no-as-needed")
    add_definitions(-D_FILE_OFFSET_BITS=64)
endif()

include(third_party/protobuf.cmake)
include(third_party/leveldb.cmake)
include(third_party/glog.cmake)
include(third_party/gtest.cmake)

if(WIN32)
    set(PHXPAXOS_PORT_SRCS
        port/port.h
        port/port_win.h
        port/port_win.cpp
        port/win/arpa/inet.h
        port/win/dirent.c
        port/win/dirent.h
        port/win/netinet/in.h
        port/win/netinet/tcp.h
        port/win/poll.cpp
        port/win/poll.h
        port/win/pthread.h
        port/win/sched.h
        port/win/sys/epoll.cpp
        port/win/sys/epoll.h
        port/win/sys/socket.cpp
        port/win/sys/socket.h
        port/win/sys/time.cpp
        port/win/sys/time.h
        port/win/sys/un.h
        port/win/unistd.c
        port/win/unistd.h
    )
    add_library(libphxpaxos_port STATIC ${PHXPAXOS_PORT_SRCS})
    target_compile_definitions(libphxpaxos_port PRIVATE FD_SETSIZE=8192)
    target_include_directories(libphxpaxos_port INTERFACE port port/win)
endif(WIN32)

set(PHXPAXOS_SRCS
    include/phxpaxos/breakpoint.h
    include/phxpaxos/def.h
    include/phxpaxos/log.h
    include/phxpaxos/network.h
    include/phxpaxos/node.h
    include/phxpaxos/options.h
    include/phxpaxos/sm.h
    include/phxpaxos/storage.h

    src/algorithm/acceptor.cpp
    src/algorithm/acceptor.h
    src/algorithm/base.cpp
    src/algorithm/base.h
    src/algorithm/checkpoint_receiver.cpp
    src/algorithm/checkpoint_receiver.h
    src/algorithm/checkpoint_sender.cpp
    src/algorithm/checkpoint_sender.h
    src/algorithm/commitctx.cpp
    src/algorithm/commitctx.h
    src/algorithm/committer.cpp
    src/algorithm/committer.h
    src/algorithm/instance.cpp
    src/algorithm/instance.h
    src/algorithm/ioloop.cpp
    src/algorithm/ioloop.h
    src/algorithm/learner.cpp
    src/algorithm/learner.h
    src/algorithm/learner_sender.cpp
    src/algorithm/learner_sender.h
    src/algorithm/msg_counter.cpp
    src/algorithm/msg_counter.h
    src/algorithm/proposer.cpp
    src/algorithm/proposer.h
    src/checkpoint/cleaner.cpp
    src/checkpoint/cleaner.h
    src/checkpoint/cp_mgr.cpp
    src/checkpoint/cp_mgr.h
    src/checkpoint/replayer.cpp
    src/checkpoint/replayer.h
    src/comm/breakpoint.cpp
    src/comm/commdef.h
    src/comm/comm_include.h
    src/comm/inside_options.cpp
    src/comm/inside_options.h
    src/comm/logger.cpp
    src/comm/logger.h
    src/comm/msg_transport.h
    src/comm/options.cpp

    src/communicate/communicate.cpp
    src/communicate/communicate.h
    src/communicate/dfnetwork.cpp
    src/communicate/dfnetwork.h
    src/communicate/network.cpp
    src/communicate/tcp/event_base.cpp
    src/communicate/tcp/event_base.h
    src/communicate/tcp/event_loop.cpp
    src/communicate/tcp/event_loop.h
    src/communicate/tcp/message_event.cpp
    src/communicate/tcp/message_event.h
    src/communicate/tcp/notify.h
    src/communicate/tcp/tcp.cpp
    src/communicate/tcp/tcp.h
    src/communicate/tcp/tcp_acceptor.cpp
    src/communicate/tcp/tcp_acceptor.h
    src/communicate/tcp/tcp_client.cpp
    src/communicate/tcp/tcp_client.h
    src/communicate/udp.cpp
    src/communicate/udp.h
    src/config/config.cpp
    src/config/config.h
    src/config/config_include.h
    src/config/inside_sm.h
    src/config/system_v_sm.cpp
    src/config/system_v_sm.h
    src/logstorage/db.cpp
    src/logstorage/db.h
    src/logstorage/log_store.cpp
    src/logstorage/log_store.h
    src/logstorage/paxos_log.cpp
    src/logstorage/paxos_log.h
    src/logstorage/system_variables_store.cpp
    src/logstorage/system_variables_store.h
    src/master/master_mgr.cpp
    src/master/master_mgr.h
    src/master/master_sm.cpp
    src/master/master_sm.h
    src/master/master_variables_store.cpp
    src/master/master_variables_store.h
    src/node/group.cpp
    src/node/group.h
    src/node/node.cpp
    src/node/pnode.cpp
    src/node/pnode.h
    src/node/propose_batch.cpp
    src/node/propose_batch.h
    src/sm-base/sm.cpp
    src/sm-base/sm_base.cpp
    src/sm-base/sm_base.h

    src/utils/bytes_buffer.cpp
    src/utils/bytes_buffer.h
    src/utils/concurrent.cpp
    src/utils/concurrent.h
    src/utils/crc32.cpp
    src/utils/crc32.h
    src/utils/notifier_pool.cpp
    src/utils/notifier_pool.h
    src/utils/serial_lock.cpp
    src/utils/serial_lock.h
    src/utils/socket.cpp
    src/utils/socket.h
    src/utils/timer.cpp
    src/utils/timer.h
    src/utils/util.cpp
    src/utils/util.h
    src/utils/utils_include.h
    src/utils/wait_lock.cpp
    src/utils/wait_lock.h
)
set(PHXPAXOS_PROTO_SRCS
    src/comm/paxos_msg.proto
    src/master/master_sm.proto
)

set(PROTOBUF_GENERATE_CPP_APPEND_PATH 1)
set(PROTO_SRCS)
set(PROTO_HDRS)
foreach(proto_file ${PHXPAXOS_PROTO_SRCS})
    protobuf_generate_cpp(PROTO_SRCS PROTO_HDRS ${proto_file})
    list(APPEND PHXPAXOS_SRCS ${PROTO_SRCS})
    list(APPEND PHXPAXOS_SRCS ${PROTO_HDRS})
endforeach()
if(WIN32)
    list(APPEND PHXPAXOS_SRCS src/communicate/tcp/notify_win.cpp)
else(WIN32)
    list(APPEND PHXPAXOS_SRCS src/communicate/tcp/notify.cpp)
endif(WIN32)

add_library(libphxpaxos STATIC ${PHXPAXOS_SRCS})
target_include_directories(libphxpaxos
    PUBLIC include src
    PRIVATE src/utils
            src/algorithm
            src/checkpoint
            src/comm
            src/communicate
            src/communicate/tcp
            src/config
            src/logstorage
            src/master
            src/node
            src/sm-base
            src/tools
            ${CMAKE_CURRENT_BINARY_DIR}
)
target_link_libraries(libphxpaxos libprotobuf libleveldb)
if(WIN32)
    target_link_libraries(libphxpaxos libphxpaxos_port ws2_32)
    set_target_properties(libphxpaxos PROPERTIES COMPILE_FLAGS "/wd4373")
endif(WIN32)

set(PHXPAXOS_PLUGIN_SRCS
    plugin/include/phxpaxos_plugin/logger_google.h
    plugin/include/phxpaxos_plugin/monitor.h
    plugin/logger_google/logger_google.cpp
    plugin/logger_google/logger_google_impl.cpp
    plugin/logger_google/logger_google_impl.h
    plugin/monitor/monitor.cpp
    plugin/monitor/monitor_bp.cpp
    plugin/monitor/monitor_bp.h
)
add_library(libphxpaxos_plugin STATIC ${PHXPAXOS_PLUGIN_SRCS})
target_include_directories(libphxpaxos_plugin PUBLIC plugin/include)
target_link_libraries(libphxpaxos_plugin libphxpaxos libglog)

add_executable(phxpaxos_echo
    sample/phxecho/echo_server.cpp
    sample/phxecho/echo_server.h
    sample/phxecho/echo_sm.cpp
    sample/phxecho/echo_sm.h
    sample/phxecho/main.cpp
)
target_link_libraries(phxpaxos_echo libphxpaxos libphxpaxos_plugin)

add_executable(phxpaxos_election
    sample/phxelection/election.cpp
    sample/phxelection/election.h
    sample/phxelection/election_main.cpp
)
target_link_libraries(phxpaxos_election libphxpaxos libphxpaxos_plugin)

add_executable(phxpaxos_ut
    src/ut/acceptor_ut.cpp
    src/ut/db_ut.cpp
    src/ut/make_class.cpp
    src/ut/make_class.h
    src/ut/mock_class.h
    src/ut/nodeid_ut.cpp
    src/ut/proposer_ut.cpp
    src/ut/timer_ut.cpp
    src/ut/ut_main.cpp
    src/ut/wait_lock_ut.cpp
)
target_link_libraries(phxpaxos_ut libgtest libphxpaxos)
target_include_directories(phxpaxos_ut PRIVATE
    src/utils
    src/algorithm
    src/checkpoint
    src/comm
    src/communicate
    src/communicate/tcp
    src/config
    src/logstorage
    src/master
    src/node
    src/sm-base
    src/tools
    ${CMAKE_CURRENT_BINARY_DIR}
)