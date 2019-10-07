#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u dbohrk -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG dbohrk/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push dbohrk/$IMAGE:$BUILD_TAG
