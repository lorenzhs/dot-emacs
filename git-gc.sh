#!/bin/bash

find . -name .git -type d -exec bash -c "pushd {} && git prune && git gc --aggressive --prune=now && git prune && popd" \;
