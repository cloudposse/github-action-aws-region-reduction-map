#!/bin/bash -l

set -e

OPTIONS=""

if [[ ${FORMAT} != "" ]];
then
	OPTIONS="--${FORMAT}"
fi

RESULT=$(aws-region ${OPTIONS} ${REGION})

echo "result=${RESULT}" >> $GITHUB_OUTPUT