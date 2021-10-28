ARG VERSION
ARG SCALA_VERSION

# 基础镜像
FROM flink:${VERSION}-scala_${SCALA_VERSION}

# 如果这里不重复定义参数，后面会取不到参数的值
ARG VERSION
ARG SCALA_VERSION

# 作者及邮箱
# 镜像的作者和邮箱
LABEL maintainer="nnzbz@163.com"
# 镜像的版本
LABEL version=${VERSION}
# 镜像的描述
LABEL description="Flink with connector-jdbc"

ENV TZ=CST-8

COPY flink-connector-jdbc_${SCALA_VERSION}-${VERSION}.jar /opt/flink/lib