#!/usr/bin/env bash
find . -type d -print0 | xargs -0 chmod 755
find . -type f -print0 | xargs -0 chmod 644
find . -type f -regex ".*\.sh" -print0 | xargs -0 chmod 755