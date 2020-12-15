#!/usr/bin/env bash

# --- repair-permissions.sh ---
#
# Recursively update the permissions of all files
# in the current directory.
#
# Default
# - Directories: 0755
# - Files:       0644
#
# Filetypes
# - *.sh:        0755
#
# Copyright (C) 2020 Robert Coffey
# Licensed under the GNU GPLv2

DEFAULT_RWX_MODE=0755
DEFAULT_RW_MODE=0644

find . -type d -print0 | xargs -0 chmod $DEFAULT_RWX_MODE
find . -type f -print0 | xargs -0 chmod $DEFAULT_RW_MODE
find . -type f -regex ".*\.sh" -print0 | xargs -0 chmod $DEFAULT_RWX_MODE
