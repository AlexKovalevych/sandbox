#!/bin/bash

cd $TRAVIS_BUILD_DIR

# Run all tests except pending ones
echo "- mix test --exclude pending --trace "
RES=$(mix test --exclude pending --trace)
echo ${RES}
