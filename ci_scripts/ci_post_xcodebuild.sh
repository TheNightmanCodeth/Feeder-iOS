#!/bin/sh

#  ci_post_xcodebuild.sh
#  Feeder-iOS
#
#  Created by Joe Diragi on 9/10/22.
#

# Brute force

echo "========Recursive root ls========="
echo $(ls -R /)
echo "=================================="

echo "======Recursive volumes ls========"
echo $(ls -R /Volumes/)
echo "=================================="

echo "======Recursive workspace ls======"
echo $(ls -R /Volumes/workspace)
echo "=================================="
