#!/bin/bash

source entrypoint.sh

echo "Running roslaunch move base..."

roslaunch --wait /launch-files/mb-navigation-teb-sim.launch
