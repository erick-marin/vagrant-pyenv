#!/usr/bin/env bash

apt update
apt upgrade

# Add pyenv to your path and to initialize pyenv/pyenv-virtualenv auto completion.
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >>/home/vagrant/.bashrc
echo 'eval "$(pyenv init -)"' >>/home/vagrant/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >>/home/vagrant/.bashrc

# pyenv builds Python from source, which means you’ll need build dependencies
# to actually use pyenv.
apt-get install -y make git python3-pip build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

apt-get autoremove
