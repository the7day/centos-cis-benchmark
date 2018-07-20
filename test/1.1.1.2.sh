#!/bin/sh

# 1.1.1.2 Ensure mounting of freevxfs filesystems is disabled (Scored)

modprobe -n -v freevxfs | grep -E "install /bin/true" || exit $?

lsmod | grep freevxfs || exit $?