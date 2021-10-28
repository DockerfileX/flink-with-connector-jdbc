# flink-with-connector-jdbc

[TOC]

## 1. 制作原因

Flink原版镜像不含connector-jdbc，即使job manager的jar包中包含有此内容也没有作用，就此特制作此镜像

## 2. 官网

- 文档
  <https://ci.apache.org/projects/flink/flink-docs-release-1.13/zh/>
- docker
  <https://hub.docker.com/_/flink>

## 3. 编译

```sh
docker build -t nnzbz/flink-with-connector-jdbc:1.13.3 --build-arg VERSION=1.13.3 --build-arg SCALA_VERSION=2.12  .
# latest
docker tag nnzbz/flink-with-connector-jdbc:1.13.3 nnzbz/flink-with-connector-jdbc:latest
```

## 4. 上传镜像

```sh
docker push nnzbz/flink-with-connector-jdbc:1.13.3
docker push nnzbz/flink-with-connector-jdbc:latest
```
