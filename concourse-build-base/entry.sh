#!/bin/sh

if [ -n "$AWS_BUCKET" ]; then
  aws s3 sync s3://${AWS_BUCKET}/.ssh ~/.
fi

if [ -f ~/.ssh/id_rsa ]; then
  eval $(ssh-agent)
  chmod -R 700 ~/.ssh
  ssh-add ~/.ssh/id_rsa <<EOF
EOF
fi

$@
