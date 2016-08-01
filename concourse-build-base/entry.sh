#!/bin/sh

if [ -n "$AWS_BUCKET" ]; then
  aws s3 sync s3://$AWS_BUCKET ~/.
fi

if ls ~/.ssh/*.key 1> /dev/null 2>&1; then
  eval $(ssh-agent)
  chmod -R 700 ~/.ssh
  ssh-add ~/.ssh/*.key <<EOF
EOF
fi

$@
