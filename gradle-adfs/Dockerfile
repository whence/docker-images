FROM anapsix/alpine-java:jdk8

RUN apk --update add bash curl ca-certificates libstdc++ openssl && \
  curl -L -o /tmp/gradle-source-build.zip \
    https://s3-ap-southeast-2.amazonaws.com/files.dev.myob.com/gradle-source-build.zip && \
  openssl dgst -sha256 /tmp/gradle-source-build.zip \
    | grep '46cfdffb87c188f5cd686a4c702ae16f987217211efd7882e53e48d3851e02ff' \
    || (echo 'shasum mismatch' && false) && \
  unzip /tmp/gradle-source-build.zip -d / && \
  rm -rf /tmp/* /var/cache/apk/*

ENV GRADLE_HOME=/gradle-source-build \
    GRADLE_OPTS="-Dorg.gradle.daemon=false" \
    PATH=$PATH:/gradle-source-build/bin

CMD ["gradle"]
