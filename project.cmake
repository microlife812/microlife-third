if(NOT PROJECT_MICROLIFE_THIRD_ROOT)
    message(FATAL_ERROR "Variable PROJECT_MICROLIFE_THIRD_ROOT is not defined!")
endif()

file(GLOB PROJECT_MICROLIFE_THIRD_LUA_SRC ${PROJECT_MICROLIFE_THIRD_ROOT}/lua/src/*.c)
list(FILTER PROJECT_MICROLIFE_THIRD_LUA_SRC EXCLUDE REGEX "src/luac\\.c$")
list(FILTER PROJECT_MICROLIFE_THIRD_LUA_SRC EXCLUDE REGEX "src/lua\\.c$")
include_directories(${PROJECT_MICROLIFE_THIRD_ROOT}/lua/src)
