#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u newyon2014 -p $PASS

echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG newyon2014/$IMAGE:$BUILD_TAG

echo "*** Pushing image ***"
docker push newyon2014/$IMAGE:$BUILD_TAG
