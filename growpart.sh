#!/bin/sh
. /lib/dracut-lib.sh

info "Attempting to grow root partition."

growpart -u off ${root#block:} 1 | vinfo
partprobe
