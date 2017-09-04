set(GTEST_DIR third_party/gtest)
set(GTEST_SRCS
    "${GTEST_DIR}/googletest/src/gtest-all.cc"
    "${GTEST_DIR}/googlemock/src/gmock-all.cc"
)
add_library(libgtest ${GTEST_SRCS})
target_include_directories(libgtest
    PUBLIC "${GTEST_DIR}/googletest/include"
    PUBLIC "${GTEST_DIR}/googlemock/include"
    PRIVATE "${GTEST_DIR}/googletest"
    PRIVATE "${GTEST_DIR}/googlemock"
)