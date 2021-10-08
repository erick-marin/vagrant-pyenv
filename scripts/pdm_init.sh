#!/usr/bin/env bash

# PDM provides an installation script that will install PDM into an isolated environment.
curl -sSL https://raw.githubusercontent.com/pdm-project/pdm/main/install-pdm.py | python3 -

# Add /home/vagrant/.local/bin to PATH by executing:
echo 'export PATH=/home/vagrant/.local/bin:$PATH' >>/home/vagrant/.bashrc

# Enable PEP 582 Globally
# To make the Python interpreters aware of PEP 582 packages, one needs to add
# the pdm/pep582/sitecustomize.py to the Python library search path.
#
# pdm --pep582 >>~/.bash_profile
