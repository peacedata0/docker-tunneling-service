#!/bin/bash

# The name of the docker image
PROJECT_NAME="tunneling-service"

# The hostname of the created image
SSH_HOSTNAME="entrypoint"

# The port to which SSH will be mapped on the host machine
SSH_PORT=4321

# Require these only when buliding
if [ "$1" == "build" ]; then

    # The user you'll use to login
    read -p 'SSH Username: ' SSH_USERNAME
    # SSH_USERNAME="MY-USER"

    # The password you'll use to login
    read -p 'SSH Password: ' -s SSH_PASSWORD;echo
    # SSH_PASSWORD="MY-PASSWORD"

    # The Slack endpoint which will receive the alerts
    read -p 'Slack Endpoint: ' SLACK_ENDPOINT
    # SLACK_ENDPOINT="MY-SLACK-ENDPOINT"
fi
