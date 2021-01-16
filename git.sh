#!/usr/bin/env bash

set -e
#set -x
cd $(pwd)

rm -rf docs
hugo

git add .

__msg=$@
__len=$(echo $__msg |wc -c)

if [ $__len -lt 2 ];then
  __msg="routine commit"
fi

echo $__msg

git commit -m "$__msg"
git push
