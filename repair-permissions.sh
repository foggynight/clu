#!/usr/bin/env bash

# Recursively update the permissions of all files
# in the current directory.
#
# Default
# - Directories: 0755
# - Files:       0644
#
# Filetypes
# - *.sh:        0755

find . -type d -print0 | xargs -0 chmod 0755
find . -type f -print0 | xargs -0 chmod 0644
find . -type f -regex ".*\.sh" -print0 | xargs -0 chmod 0755
