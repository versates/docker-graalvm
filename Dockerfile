ARG DEBIAN_IMAGE_VERSION
FROM debian:${DEBIAN_IMAGE_VERSION:-"stretch-slim"}

ARG JDK_VERSION
ARG GRAALVM_VERSION

ENV LANG="C.UTF-8" \
    JDK_VERSION=${JDK_VERSION:-"11"} \
    GRAALVM_VERSION=${GRAALVM_VERSION:-"20.0.0"} \
    INSTALL_DIR="/usr/lib/java" \
    DOWNLOAD_URL="https://github.com/graalvm/graalvm-ce-builds/releases/download"
ENV JAVA_HOME="${INSTALL_DIR}/graalvm-ce-java${JDK_VERSION}-${GRAALVM_VERSION}"
ENV PATH="${JAVA_HOME}/bin:${PATH}"

RUN apt-get update -qq; \
    apt-get autoremove -qq --purge; \
    apt-get install -qq --no-install-recommends wget ca-certificates p11-kit; \
    mkdir -m 755 -p "${INSTALL_DIR}"; \
    wget -qO- "${DOWNLOAD_URL}/vm-${GRAALVM_VERSION}/graalvm-ce-java${JDK_VERSION}-linux-amd64-${GRAALVM_VERSION}.tar.gz" \
            | tar xfz - -C "${INSTALL_DIR}"; \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

CMD "/bin/bash"