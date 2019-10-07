#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/Users/dave/projects/jenkins/jenkins-pipeline/jenkins-pipeline/pipeline

docker run --rm  -v  $WORKSPACE/java-app:/app -v $WORKSPACE/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
