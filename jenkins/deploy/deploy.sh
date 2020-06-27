#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth jenkins_remote@192.168.0.109:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh jenkins_remote@192.168.0.109:/tmp/publish
ssh -i /opt/prod jenkins_remote@192.168.0.109 "/tmp/publish"
