#!/bin/bash

set -e 
cd $(pwd)

rm -rf docs

hugo 

git add . 


__msg=$1


if [ -z $__msg ]; then
  __msg="routine commit"
fi

git commit -m "$__msg"
git push
