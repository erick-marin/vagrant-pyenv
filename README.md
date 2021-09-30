# Vagrant Box Config for Python Development Environment

![pyenv](https://files.realpython.com/media/Getting-Started-With-pyenv_Watermarked.7b1dd55b32a1.jpg "Managinge Multiple Python Versions with pyenv")

## Description

Configure a Python development environment in a Debian virtual environment using Vagrant and VirtualBox.

## Installation

Clone the repository to your local system.

```bash
git clone https://github.com/erick-marin/vagrant-pyenv.git
```

## Usage

```python
import foobar

# returns 'words'
foobar.pluralize('word')

# returns 'geese'
foobar.pluralize('goose')

# returns 'phenomenon'
foobar.singularize('phenomena')
```

## Remote Development with Visual Studio Code

With VSC open, after generating the Vagrant virtual machine (Debian), you have the option to access the VM from the terminal window:

```shell
vagrant ssh
```

But to take advantage of using VSC features with the virtual Python environment that you are using to develop your code, install the [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) extension from Microsoft.

Once you have installed the extension, from your cloned project directory, execute the following command to view the SSH `config` file for the Vagrant "box" created:

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

To "Open a Remote Window", *click* on the icon displayed on the lower-left of the application window:

![Open Remote Window](/images/01-remote-window.png "Open a Remote Window")

The command palette at the top of the applciation window will drop-down a list of options. Select "Connect to Host...":

![Connect to Host](/images/02-connect-to-host.png "Connect to Host")

The command palette then indicates to "Select configured SSH Host" where you will select the VM remote machine you set:

![Select configured SSH host](/images/03-select-configured-ssh-host.png "Select configured SSH host")

This will open a new VSC application window

Since the extensions that are in the local may not have been introduced on the remote side, let's customize and install the necessary extensions.

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
