#!/bin/bash

set -e 
set -x

cd $(pwd)

hugo 

git add . 


__msg=$1


if [ -z $__msg ]; then
  __msg="routine commit"
fi

git commit -m "$__msg"
