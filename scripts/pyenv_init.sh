#!/usr/bin/env bash

# After you’ve installed the build dependencies, you’re ready to install pyenv
# itself.
cd /home/vagrant
curl https://pyenv.run | bash

# Add pyenv to your path and to initialize pyenv/pyenv-virtualenv auto completion.
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >>/home/vagrant/.bashrc
echo 'eval "$(pyenv init -)"' >>/home/vagrant/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >>/home/vagrant/.bashrc

# Once you’ve done this, you need to reload your shell:

# exec "$SHELL" # Restart your terminal
source ~/.bashrc # Refresh bash terminal profile

pyenv install -v 3.8.10
pyenv install -v 3.8.11
pyenv install -v 3.8.12
pyenv global 3.8.12

# Detect the use of requirements.txt
pip3 install --upgrade pip
if [ -f /scripts/requirements.txt ]; then
    pip3 install -r /scripts/requirements.txt
fi
