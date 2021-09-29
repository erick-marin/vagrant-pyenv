#!/usr/bin/env bash

# After you’ve installed the build dependencies, you’re ready to install pyenv
# itself.
cd /home/vagrant
curl https://pyenv.run | bash

pyenv install 3.8.10
pyenv global 3.8.10

# Once you’ve done this, you need to reload your shell:

# exec "$SHELL" # Or just restart your terminal
source ~.bashrc

# Detect the use of requirements.txt
pip install --upgrade pip
if [ -f /vagrant/scripts/requirements.txt ]; then
    pip install -r /vagrant/scripts/requirements.txt
fi
