#!/bin/bash

set -e

source /opt/ros/noetic/setup.bash

echo "Provided arguments: $@"

exec $@