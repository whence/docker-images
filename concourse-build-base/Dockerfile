FROM ruby:alpine

COPY entry.sh /usr/local/bin/entry

RUN apk update \
  && apk add ruby-dev build-base openssh git libxml2 zlib-dev libffi-dev python py-pip \
  && pip install awscli \
  && gem install berkshelf \
  && aws configure set s3.signature_version s3v4 \
  && chmod +x /usr/local/bin/entry \
  && rm -rf /var/cache/apk/*

ENTRYPOINT ["entry"]
