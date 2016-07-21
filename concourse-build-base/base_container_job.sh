#!/bin/bash

fly -t concourse-ci set-pipeline -n -p base -c base-container.yml --load-vars-from base-credentials.yml
fly -t concourse-ci unpause-pipeline --pipeline base
fly -t concourse-ci trigger-job -j base/base-container
fly -t concourse-ci watch -j base/base-container
