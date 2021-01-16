#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR

#set -x
set -e

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
