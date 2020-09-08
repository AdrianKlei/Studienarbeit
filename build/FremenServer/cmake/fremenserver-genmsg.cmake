# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fremenserver: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ifremenserver:/home/adrian/fremen_ws/devel/share/fremenserver/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fremenserver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg" NAME_WE)
add_custom_target(_fremenserver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fremenserver" "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg" ""
)

get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg" NAME_WE)
add_custom_target(_fremenserver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fremenserver" "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg" "actionlib_msgs/GoalID:fremenserver/FremenFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg" NAME_WE)
add_custom_target(_fremenserver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fremenserver" "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg" ""
)

get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg" NAME_WE)
add_custom_target(_fremenserver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fremenserver" "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg" "fremenserver/FremenResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg" NAME_WE)
add_custom_target(_fremenserver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fremenserver" "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg" "fremenserver/FremenResult:fremenserver/FremenActionFeedback:std_msgs/Header:fremenserver/FremenActionResult:fremenserver/FremenGoal:fremenserver/FremenFeedback:actionlib_msgs/GoalID:fremenserver/FremenActionGoal:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg" NAME_WE)
add_custom_target(_fremenserver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fremenserver" "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg" ""
)

get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg" NAME_WE)
add_custom_target(_fremenserver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fremenserver" "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg" "actionlib_msgs/GoalID:fremenserver/FremenGoal:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
)
_generate_msg_cpp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
)
_generate_msg_cpp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
)
_generate_msg_cpp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
)
_generate_msg_cpp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
)
_generate_msg_cpp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
)
_generate_msg_cpp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
)

### Generating Services

### Generating Module File
_generate_module_cpp(fremenserver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fremenserver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fremenserver_generate_messages fremenserver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_cpp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_cpp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_cpp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_cpp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_cpp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_cpp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_cpp _fremenserver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fremenserver_gencpp)
add_dependencies(fremenserver_gencpp fremenserver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fremenserver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
)
_generate_msg_eus(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
)
_generate_msg_eus(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
)
_generate_msg_eus(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
)
_generate_msg_eus(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
)
_generate_msg_eus(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
)
_generate_msg_eus(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
)

### Generating Services

### Generating Module File
_generate_module_eus(fremenserver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fremenserver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fremenserver_generate_messages fremenserver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_eus _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_eus _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_eus _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_eus _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_eus _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_eus _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_eus _fremenserver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fremenserver_geneus)
add_dependencies(fremenserver_geneus fremenserver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fremenserver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
)
_generate_msg_lisp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
)
_generate_msg_lisp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
)
_generate_msg_lisp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
)
_generate_msg_lisp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
)
_generate_msg_lisp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
)
_generate_msg_lisp(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
)

### Generating Services

### Generating Module File
_generate_module_lisp(fremenserver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fremenserver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fremenserver_generate_messages fremenserver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_lisp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_lisp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_lisp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_lisp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_lisp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_lisp _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_lisp _fremenserver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fremenserver_genlisp)
add_dependencies(fremenserver_genlisp fremenserver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fremenserver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
)
_generate_msg_nodejs(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
)
_generate_msg_nodejs(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
)
_generate_msg_nodejs(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
)
_generate_msg_nodejs(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
)
_generate_msg_nodejs(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
)
_generate_msg_nodejs(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(fremenserver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fremenserver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fremenserver_generate_messages fremenserver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_nodejs _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_nodejs _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_nodejs _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_nodejs _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_nodejs _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_nodejs _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_nodejs _fremenserver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fremenserver_gennodejs)
add_dependencies(fremenserver_gennodejs fremenserver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fremenserver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
)
_generate_msg_py(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
)
_generate_msg_py(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
)
_generate_msg_py(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
)
_generate_msg_py(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg"
  "${MSG_I_FLAGS}"
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
)
_generate_msg_py(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
)
_generate_msg_py(fremenserver
  "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
)

### Generating Services

### Generating Module File
_generate_module_py(fremenserver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fremenserver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fremenserver_generate_messages fremenserver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_py _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_py _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenFeedback.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_py _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionResult.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_py _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenAction.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_py _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_py _fremenserver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/adrian/fremen_ws/devel/share/fremenserver/msg/FremenActionGoal.msg" NAME_WE)
add_dependencies(fremenserver_generate_messages_py _fremenserver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fremenserver_genpy)
add_dependencies(fremenserver_genpy fremenserver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fremenserver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fremenserver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(fremenserver_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fremenserver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(fremenserver_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fremenserver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(fremenserver_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fremenserver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(fremenserver_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fremenserver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(fremenserver_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
