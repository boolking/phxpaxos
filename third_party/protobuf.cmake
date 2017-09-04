
set(PROTOBUF_DIR third_party/protobuf)
set(LIBPROTOBUF_SRCS
    "${PROTOBUF_DIR}/src/google/protobuf/any.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/any.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/api.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/importer.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/parser.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/descriptor.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/descriptor.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/descriptor_database.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/duration.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/dynamic_message.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/empty.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/extension_set_heavy.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/field_mask.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/generated_message_reflection.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/gzip_stream.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/printer.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/strtod.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/tokenizer.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/zero_copy_stream_impl.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/map_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/message.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/reflection_ops.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/service.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/source_context.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/struct.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/mathlimits.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/substitute.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/text_format.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/timestamp.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/type.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/unknown_field_set.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/field_comparator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/field_mask_util.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/datapiece.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/default_value_objectwriter.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/error_listener.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/field_mask_utility.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/json_escaping.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/json_objectwriter.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/json_stream_parser.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/object_writer.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/proto_writer.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/protostream_objectsource.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/protostream_objectwriter.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/type_info.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/type_info_test_helper.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/internal/utility.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/json_util.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/message_differencer.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/time_util.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/util/type_resolver_util.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/wire_format.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/wrappers.pb.cc")
set(LIBPROTOBUF_LITE_SRCS
    "${PROTOBUF_DIR}/src/google/protobuf/arena.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/arenastring.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/extension_set.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/generated_message_util.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/coded_stream.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/zero_copy_stream.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/io/zero_copy_stream_impl_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/message_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/repeated_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/atomicops_internals_x86_gcc.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/atomicops_internals_x86_msvc.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/bytestream.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/common.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/int128.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/once.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/status.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/statusor.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/stringpiece.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/stringprintf.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/structurally_valid.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/strutil.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/stubs/time.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/wire_format_lite.cc")
set(LIBPROTOC_SRCS
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/code_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/command_line_interface.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_enum.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_enum_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_extension.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_file.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_helpers.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_map_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_message.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_message_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_primitive_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_service.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/cpp/cpp_string_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_doc_comment.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_enum.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_enum_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_field_base.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_helpers.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_map_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_message.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_message_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_primitive_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_reflection_class.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_repeated_enum_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_repeated_message_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_repeated_primitive_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_source_generator_base.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/csharp/csharp_wrapper_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_context.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_doc_comment.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_enum.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_enum_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_enum_field_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_enum_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_extension.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_extension_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_file.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_generator_factory.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_helpers.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_lazy_message_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_lazy_message_field_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_map_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_map_field_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_message.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_message_builder.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_message_builder_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_message_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_message_field_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_message_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_name_resolver.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_primitive_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_primitive_field_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_service.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_shared_code_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_string_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/java/java_string_field_lite.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_enum.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_enum_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_extension.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_file.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_helpers.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_map_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_message.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_message_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/javanano/javanano_primitive_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/js/js_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_enum.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_enum_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_extension.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_file.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_helpers.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_map_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_message.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_message_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_oneof.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/objectivec/objectivec_primitive_field.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/plugin.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/plugin.pb.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/python/python_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/ruby/ruby_generator.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/subprocess.cc"
    "${PROTOBUF_DIR}/src/google/protobuf/compiler/zip_writer.cc")

add_library(libprotobuf-lite STATIC ${LIBPROTOBUF_LITE_SRCS})
target_include_directories(libprotobuf-lite PUBLIC "${PROTOBUF_DIR}/src")
target_compile_definitions(libprotobuf-lite PUBLIC _SCL_SECURE_NO_WARNINGS _CRT_SECURE_NO_WARNINGS _CRT_NONSTDC_NO_WARNINGS)

add_library(libprotobuf STATIC ${LIBPROTOBUF_SRCS})
target_include_directories(libprotobuf PUBLIC "${PROTOBUF_DIR}/src")
target_link_libraries(libprotobuf libprotobuf-lite)

add_library(libprotoc STATIC ${LIBPROTOC_SRCS})
target_include_directories(libprotoc PUBLIC "${PROTOBUF_DIR}/src")
target_link_libraries(libprotoc libprotobuf)

add_executable(protoc "${PROTOBUF_DIR}/src/google/protobuf/compiler/main.cc")
target_link_libraries(protoc libprotoc libprotobuf libprotobuf-lite)

if(MSVC)
foreach(proj libprotobuf-lite libprotobuf libprotoc protoc)
message("setting ${proj}")
set_target_properties(${proj} PROPERTIES COMPILE_FLAGS "/wd4244 /wd4018 /wd4800")
endforeach()
endif(MSVC)

function(PROTOBUF_GENERATE_CPP SRCS HDRS)
  if(NOT ARGN)
    message(SEND_ERROR "Error: PROTOBUF_GENERATE_CPP() called without any proto files")
    return()
  endif()

  if(PROTOBUF_GENERATE_CPP_APPEND_PATH)
    # Create an include path for each file specified
    foreach(FIL ${ARGN})
      get_filename_component(ABS_FIL ${FIL} ABSOLUTE)
      get_filename_component(ABS_PATH ${ABS_FIL} PATH)
      list(FIND _protobuf_include_path ${ABS_PATH} _contains_already)
      if(${_contains_already} EQUAL -1)
          list(APPEND _protobuf_include_path -I ${ABS_PATH})
      endif()
    endforeach()
  else()
    set(_protobuf_include_path -I ${CMAKE_CURRENT_SOURCE_DIR})
  endif()

  if(DEFINED Protobuf_IMPORT_DIRS)
    foreach(DIR ${Protobuf_IMPORT_DIRS})
      get_filename_component(ABS_PATH ${DIR} ABSOLUTE)
      list(FIND _protobuf_include_path ${ABS_PATH} _contains_already)
      if(${_contains_already} EQUAL -1)
          list(APPEND _protobuf_include_path -I ${ABS_PATH})
      endif()
    endforeach()
  endif()

  set(${SRCS})
  set(${HDRS})
  foreach(FIL ${ARGN})
    get_filename_component(ABS_FIL ${FIL} ABSOLUTE)
    get_filename_component(FIL_WE ${FIL} NAME_WE)

    list(APPEND ${SRCS} "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.cc")
    list(APPEND ${HDRS} "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.h")

    add_custom_command(
      OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.cc"
             "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.h"
      COMMAND  protoc
      ARGS --cpp_out  ${CMAKE_CURRENT_BINARY_DIR} ${_protobuf_include_path} ${ABS_FIL}
      DEPENDS ${ABS_FIL} ${Protobuf_PROTOC_EXECUTABLE}
      COMMENT "Running C++ protocol buffer compiler on ${FIL}"
      VERBATIM )
  endforeach()

  set_source_files_properties(${${SRCS}} ${${HDRS}} PROPERTIES GENERATED TRUE)
  set(${SRCS} ${${SRCS}} PARENT_SCOPE)
  set(${HDRS} ${${HDRS}} PARENT_SCOPE)
endfunction()
