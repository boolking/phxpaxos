set(GLOG_DIR third_party/glog)
set(GLOG_WIN_DIR third_party/glog_win)
set(GLOG_SRCS
    "${GLOG_DIR}/src/logging.cc"
    "${GLOG_DIR}/src/raw_logging.cc"
    "${GLOG_DIR}/src/vlog_is_on.cc"
    "${GLOG_DIR}/src/utilities.cc"
    "${GLOG_DIR}/src/utilities.h"
    "${GLOG_DIR}/src/demangle.cc"
    "${GLOG_DIR}/src/demangle.h"
    "${GLOG_DIR}/src/stacktrace.h"
    "${GLOG_DIR}/src/stacktrace_generic-inl.h"
    "${GLOG_DIR}/src/stacktrace_libunwind-inl.h"
    "${GLOG_DIR}/src/stacktrace_powerpc-inl.h"
    "${GLOG_DIR}/src/stacktrace_x86-inl.h"
    "${GLOG_DIR}/src/stacktrace_x86_64-inl.h"
    "${GLOG_DIR}/src/symbolize.cc"
    "${GLOG_DIR}/src/symbolize.h"
    "${GLOG_DIR}/src/base/mutex.h"
    "${GLOG_DIR}/src/base/googleinit.h"
    "${GLOG_DIR}/src/base/commandlineflags.h"
    "${GLOG_DIR}/src/googletest.h")
if(WIN32)
    set(GLOG_SRCS "${GLOG_SRCS}"
        "${GLOG_DIR}/src/windows/glog/log_severity.h"
        "${GLOG_DIR}/src/windows/glog/logging.h"
        "${GLOG_DIR}/src/windows/glog/raw_logging.h"
        "${GLOG_DIR}/src/windows/glog/vlog_is_on.h"
        "${GLOG_DIR}/src/windows/glog/stl_logging.h"
        "${GLOG_DIR}/src/windows/config.h"
        "${GLOG_DIR}/src/windows/port.cc"
        "${GLOG_DIR}/src/windows/port.h"
    )
    set(GLOG_INCLUDE_DIRS "${GLOG_DIR}/src/windows")
else(WIN32)
    set(GLOG_SRCS "${GLOG_SRCS}"
        "${GLOG_DIR}/src/glog/log_severity.h"
        "${GLOG_DIR}/src/glog/logging.h"
        "${GLOG_DIR}/src/glog/raw_logging.h"
        "${GLOG_DIR}/src/glog/vlog_is_on.h"
        "${GLOG_DIR}/src/glog/stl_logging.h"
        "${GLOG_DIR}/src/signalhandler.cc"
    )
endif(WIN32)

add_library(libglog ${GLOG_SRCS})
target_include_directories(libglog PUBLIC "${GLOG_DIR}/src" PUBLIC ${GLOG_INCLUDE_DIRS})
target_compile_definitions(libglog PUBLIC "GOOGLE_GLOG_DLL_DECL=")
