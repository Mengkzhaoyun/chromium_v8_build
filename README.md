# Chrome V8 Build Tools

- 编译一个Chromium V8引擎工具

```bash
docker run -it --rm \
-v $PWD/:/go/src/github.com/mengkzhaoyun/chromium_v8_build \
-w /go/src/github.com/mengkzhaoyun/chromium_v8_build \
registry.cn-qingdao.aliyuncs.com/wod/ubuntu:v20.04-amd64 \
bash

docker build \
  --build-arg BASE=registry.cn-qingdao.aliyuncs.com/wod/ubuntu:v20.04-amd64 \
  --build-arg AUTHOR=mengkzhaoyun@gmail.com \
  --build-arg VERSION=v9.7 \
  --tag registry.cn-qingdao.aliyuncs.com/wod/chromium-v8-build:v9.7-amd64 \
  --file .beagle/dockerfile .

docker push registry.cn-qingdao.aliyuncs.com/wod/chromium-v8-build:v9.7-amd64

docker build \
  --build-arg BASE=registry.cn-qingdao.aliyuncs.com/wod/ubuntu:v20.04-arm64 \
  --build-arg AUTHOR=mengkzhaoyun@gmail.com \
  --build-arg VERSION=v9.7 \
  --tag registry.cn-qingdao.aliyuncs.com/wod/chromium-v8-build:v9.7-arm64 \
  --file .beagle/dockerfile .

docker push registry.cn-qingdao.aliyuncs.com/wod/chromium-v8-build:v9.7-arm64
```

## chrome

```bash
# amd64
docker run -it --rm \
-v $PWD/:/go/src/github.com/mengkzhaoyun/chromium_v8_build \
-w /go/src/github.com/mengkzhaoyun/chromium_v8_build \
registry.cn-qingdao.aliyuncs.com/wod/chromium-v8-build:v9.7-amd64 \
bash

# arm64
docker run -it --rm \
-v $PWD/:/go/src/github.com/mengkzhaoyun/chromium_v8_build \
-w /go/src/github.com/mengkzhaoyun/chromium_v8_build \
registry.cn-qingdao.aliyuncs.com/wod/chromium-v8-build:v9.7-arm64 \
bash
```