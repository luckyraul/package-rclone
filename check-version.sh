#!/bin/sh
version=$(curl --silent "https://api.github.com/repos/rclone/rclone/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
latest=`cat latest`

echo "Most recent Rclone version $version"
echo "Comparing with version $latest"
if [ "$version" = "$latest" ]; then echo "EQUAL"; touch equal; else echo "NOT EQUAL";fi;
