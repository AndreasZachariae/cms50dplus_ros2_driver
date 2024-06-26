#!/bin/sh
uid=$(eval "id -u")
gid=$(eval "id -g")

docker build \
    --build-arg UID="$uid" \
    --build-arg GID="$gid" \
    --build-arg ROS_DISTRO=humble \
    -t cms50dplus_ros2_driver:humble \
    .
# --no-cache 
