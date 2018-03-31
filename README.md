# odoo-11
Automated Odoo 11 installation and deploy in a Vagrant box (ubuntu/xenial64). 

# Usage
To use make shure that you have installeted Vagrant (and dependencies) in your machine.

## First usage

Open the terminal in the root directory and type:

```console
host@host $ vagrant up
```

After intalling the new vagrant instance, type:
```console
host@host $ vagrant ssh
```

To install Odoo 11, type the following code: 
```console
vagrant@ubuntu-xenial: cd work-dir
vagrant@ubuntu-xenial: chmod +x odoo-*
vagrant@ubuntu-xenial: sudo ./odoo-install.sh
```

In your internet browser type: 
```console
localhost:8069
```
And following the installation proccess!

## Nexts usages

Open the terminal in the root directory and type:
```console
host@host $ vagrant up
host@host $ vagrant ssh
vagrant@ubuntu-xenial: $ cd work-dir
vagrant@ubuntu-xenial: $ ./odoo-start.sh
vagrant@ubuntu-xenial: $ ./odoo-log.sh
```

## To halt/shutdown

Type the following commant in the terminal:
```console
vagrant@ubuntu-xenial: ~/work-dir$ sudo ./odoo-halt.sh 
```

# Scripts description:
The following scripts is descripted bellow:

## Vagrantfile
This file describe who vagrant will install the box.
I use ubuntu-xenial, and the work-dir in the host and box are synced.

## odoo-install.sh
## odoo-start.sh
## odoo-reboot.sh
## odoo-halt.sh
## odoo-log.sh
## LICENSE
