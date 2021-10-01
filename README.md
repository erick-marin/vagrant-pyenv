# Vagrant "debian/buster64" Box Provisioned for Python Development Environment

![feature-image](media/feature-image-750x422.png "Vagrant VM Using pyenv to Manage Multiple Python Version Developments")

## Description

Use [*Vagrant*](https://www.vagrantup.com/ "Vagrant") to configure a Debian OS virtual environment with *Oracle VirtualBox* as the provider. Shell script provisioning installs [`pyenv`](https://github.com/pyenv/pyenv "pyenv") on the VM to manage mutilpe Python versions and create virtual environments with per-project versions of Python.

## Installation

From a terminal window, clone the repository to your local system:

```bash
git clone https://github.com/erick-marin/vagrant-pyenv.git my-vagrant-pyenv
```

## Usage

Run the *vagrantfile*:

```shell
vagrant up
```

If *Vagrant* detects more than one network interface installed on host machine, the command line will request, *"Which interface should the network bridge to?"*, as an input. Select the interface to use with guest VM:

![Which interface?](media/01-which-interface.png "Which interface should the network bridge to?")

The *vagrantfile* will implement box configuration along with accompanying provisioning scripts. This might take a few minutes. Once complete, you can connect to the VM with `ssh`:

```shell
vagrant ssh
```

## Remote Development with Visual Studio Code

If you are using [*Microsoft Visual Studio Code*](https://code.visualstudio.com/ "Microsoft Visual Studio Code") as your editor, take advantage of the IDE's features with the virtual Python environments you create. Install the [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-VSCode-remote.vscode-remote-extensionpack) extension from Microsoft.  Once the extension is installed, open your cloned project folder.

Before executing the following command, you should be disconnected from any `vagrant ssh` connections to VM. Run the following command to view the *SSH* `config` file for the *Vagrant* VM created:

```shell
vagrant ssh-config
```

You will receive the following ouput:

```shell
Host default
  HostName 127.0.0.1
  User vagrant
  Port 2222
  UserKnownHostsFile /dev/null
  StrictHostKeyChecking no
  PasswordAuthentication no
  IdentityFile /home/[username]/Documents/Projects/python-test-dev-env/.vagrant/machines/default/virtualbox/private_key
  IdentitiesOnly yes
  LogLevel FATAL
```

Execute the following command to copy the Vagrant box's SSH `config` to your local profile's SSH `config` file:

```shell
vagrant ssh-config >> ~/.ssh/config
```

To "*Open a Remote Window*", *click* on the icon displayed on the lower-left of the *MS Code* application window:

![Open Remote Window](media/02-open-remote-window.png "Open a Remote Window")

The command palette at the top of the applciation window will drop-down a list of options. *Click* on "*Connect to Host...*":

![Connect to Host](media/03-connect-to-host.png "Connect to Host")

The command palette then indicates to "Select configured SSH Host" where you will select the VM remote machine you set in SSH `config` file:

![Select configured SSH host](media/04-select-configured-ssh-host.png "Select configured SSH host")

This will open a new *MS Code* application window attempting to connect through remote SSH extension.  When a successful connection is made

Since the *MS Code* extensions that are installed in your host machine may not have been introduced on the remote side, customize and install the necessary extensions.

![Demo](https://res.cloudinary.com/em-media/video/upload/v1633075287/vagrant-pyenv/demo_ge4lri.mp4 "Configuration demonstration.")


![Demo](https://user-images.githubusercontent.com/54794008/135587510-7b4d2835-e396-416e-be87-b9a54995e8bf.mp4)


If you want to see all the Pythone versions `pyenv` can install, you can do the following:

```shell
$ pyenv install --list
...
# There are a lot
```

Once you find the Python version(s) you want, you can install it with a single command:

```shell
cd /home/vagrant
pyenv install -v 3.8.10
pyenv install -v 3.8.11
pyenv install -v 3.8.12

# The global command sets the global Python version. This can be overridden
# with other commands, but is useful for ensuring you use a particular Python
# version by default. If you wanted to use 3.8.12 by default, then you could run # this:

pyenv global 3.8.12
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.
