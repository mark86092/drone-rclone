#!/bin/sh

echo "${RCLONE_CONFIG}" > /tmp/rclone.conf

rclone --config "/tmp/rclone.conf" \
    copy -vv "${PLUGIN_SOURCE}" "${PLUGIN_TO}"
