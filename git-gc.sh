#!/bin/bash

find . -name .git -type d -exec bash -c "pushd {} && git gc --aggressive --prune=now && git prune && popd" \;
