#!/usr/bin/env bash

apt-get -y update
apt-get -y upgrade

# pyenv builds Python from source, which means you’ll need build dependencies
# to actually use pyenv.
apt-get install -y make git python3-pip build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

apt-get autoremove
