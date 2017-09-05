set(LEVELDB_DIR third_party/leveldb)
set(LEVELDB_WIN_DIR third_party/leveldb_win)
set(LEVELDB_SRCS
    ${LEVELDB_DIR}/db/filename.cc
    ${LEVELDB_DIR}/db/version_edit.cc
    ${LEVELDB_DIR}/db/repair.cc
    ${LEVELDB_DIR}/db/log_writer.cc
    ${LEVELDB_DIR}/db/log_reader.cc
    ${LEVELDB_DIR}/db/table_cache.cc
    ${LEVELDB_DIR}/db/memtable.cc
    ${LEVELDB_DIR}/db/write_batch.cc
    ${LEVELDB_DIR}/db/builder.cc
    ${LEVELDB_DIR}/db/db_iter.cc
    ${LEVELDB_DIR}/db/db_impl.cc
    ${LEVELDB_DIR}/db/dumpfile.cc
    ${LEVELDB_DIR}/db/version_set.cc
    ${LEVELDB_DIR}/db/dbformat.cc
    ${LEVELDB_DIR}/util/options.cc
    ${LEVELDB_DIR}/util/histogram.cc
    ${LEVELDB_DIR}/util/cache.cc
    ${LEVELDB_DIR}/util/hash.cc
    ${LEVELDB_DIR}/util/comparator.cc
    ${LEVELDB_DIR}/util/arena.cc
    ${LEVELDB_DIR}/util/env.cc
    ${LEVELDB_DIR}/util/logging.cc
    ${LEVELDB_DIR}/util/crc32c.cc
    ${LEVELDB_DIR}/util/status.cc
    ${LEVELDB_DIR}/util/filter_policy.cc
    ${LEVELDB_DIR}/util/coding.cc
    ${LEVELDB_DIR}/util/bloom.cc
    ${LEVELDB_DIR}/table/table_builder.cc
    ${LEVELDB_DIR}/table/merger.cc
    ${LEVELDB_DIR}/table/block_builder.cc
    ${LEVELDB_DIR}/table/two_level_iterator.cc
    ${LEVELDB_DIR}/table/block.cc
    ${LEVELDB_DIR}/table/filter_block.cc
    ${LEVELDB_DIR}/table/table.cc
    ${LEVELDB_DIR}/table/format.cc
    ${LEVELDB_DIR}/table/iterator.cc
)

if(WIN32)
    set(LEVELDB_SRCS ${LEVELDB_SRCS}
        ${LEVELDB_WIN_DIR}/port/port_win.cc
        ${LEVELDB_WIN_DIR}/port/port_win.h
        ${LEVELDB_WIN_DIR}/util/env_win.cc
        ${LEVELDB_WIN_DIR}/util/win_logger.h
        ${LEVELDB_WIN_DIR}/util/win_logger.cc
    )
    set(LEVELDB_DEFINES LEVELDB_PLATFORM_WIN)
    set(LEVELDB_PRIVATE_INCLUDE_DIRS ${LEVELDB_WIN_DIR})
else(WIN32)
    set(LEVELDB_SRCS ${LEVELDB_SRCS}
        ${LEVELDB_DIR}/port/port_posix.h
        ${LEVELDB_DIR}/port/port_posix.cc
        ${LEVELDB_DIR}/util/env_posix.cc
        ${LEVELDB_DIR}/util/posix_logger.h)
    set(LEVELDB_DEFINES OS_LINUX LEVELDB_PLATFORM_POSIX LEVELDB_ATOMIC_PRESENT)
endif(WIN32)

add_library(libleveldb ${LEVELDB_SRCS})
target_compile_definitions(libleveldb PRIVATE ${LEVELDB_DEFINES})
target_include_directories(libleveldb PUBLIC ${LEVELDB_DIR} PUBLIC ${LEVELDB_DIR}/include PRIVATE ${LEVELDB_PRIVATE_INCLUDE_DIRS})
if(UNIX)
    set_target_properties(libleveldb PROPERTIES COMPILE_FLAGS -fno-builtin-memcmp)
endif(UNIX)