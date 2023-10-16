#!/usr/bin/env bash

set -eux

docker build . --tag docker-intern.letsdev.de/devops/parse-a-changelog
