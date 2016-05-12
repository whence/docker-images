FROM jenkinsci/jnlp-slave

USER root

# install docker tools
ENV \
  DOCKER_BUCKET=get.docker.com \
  DOCKER_VERSION=1.9.1 \
  DOCKER_SHA256=52286a92999f003e1129422e78be3e1049f963be1888afc3c9a99d5a9af04666 \
  COMPOSE_VERSION=1.7.0 \
  COMPOSE_SHA256=a748a107dd0c6146e7f8a40f9d0fde29e19b3e8234d2de7e522a1fea15048e70

RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates curl \
  && mkdir -p /usr/local/bin \
  && curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-$DOCKER_VERSION" -o /usr/local/bin/docker \
  && echo "${DOCKER_SHA256}  /usr/local/bin/docker" | sha256sum -c - \
  && chmod +x /usr/local/bin/docker \
  && curl -fSL "https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose \
  && echo "${COMPOSE_SHA256}  /usr/local/bin/docker-compose" | sha256sum -c - \
  && chmod +x /usr/local/bin/docker-compose \
  && rm -rf /tmp/* /var/lib/apt/lists/*

# install sudo
RUN apt-get update && apt-get install -y --no-install-recommends sudo \
  && rm -rf /tmp/* /var/lib/apt/lists/* \
  && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
