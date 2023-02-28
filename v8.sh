#!/bin/bash

set -ex

pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple httplib2 --upgrade

ROOT_PATH=/go/src/github.com/mengkzhaoyun/chromium_v8_build
export PATH=$ROOT_PATH/.tmp/depot_tools:$PATH
export HTTPS_PROXY=http://192.168.0.153:11083
export HTTP_PROXY=http://192.168.0.153:11083

mkdir -p .tmp
if ! [ -e .tmp/depot_tools ]; then
	git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
fi

if ! [ -e .tmp/v8 ]; then
  cd $ROOT_PATH/.tmp
  fetch v8
  cd .$ROOT_PATH/.tmp/v8
  git checkout 9.7.106.21
fi

cd $ROOT_PATH/.tmp
gclient sync