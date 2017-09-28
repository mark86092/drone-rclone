drone-rclone
============

[![Build Status](https://drone.markchen.cc/api/badges/mark86092/drone-rclone/status.svg)](https://drone.markchen.cc/mark86092/drone-rclone)

Drone plugin for [rclone](https://rclone.org/), a tool uploading/downloading files from 14 cloud services.

## Usage

```
docker run --rm \
    -e PLUGIN_SOURCE=some_filepath \
    -e PLUGIN_TO=some_filepath \
    -e RCLONE_CONFIG="$(cat rclone.conf)" \
    -v "${PWD}:${PWD}" \
    -w "${PWD}" \
    mark86092/rclone:drone
```
