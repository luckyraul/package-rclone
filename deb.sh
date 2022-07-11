#!/bin/sh

if [ -f equal ]; then
  echo "Equal game"
  exit 0;
fi

version=$(curl --silent "https://api.github.com/repos/rclone/rclone/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
curl -L "https://github.com/rclone/rclone/releases/download/${version}/rclone-${version}-linux-amd64.deb" -o "rclone-${version}-linux-amd64.deb"
