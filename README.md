# ruby-vagrant-box-source

### Source code for my Ruby Vagrant box on Atlas: [server4001/ruby-centos](https://atlas.hashicorp.com/server4001/boxes/ruby-centos)

#### Versions

* CentOS 6.7
* Ruby: 2.3.1

### Instructions

* `vagrant up`
* Make any changes you need to the box. Be sure to reflect these changes in the provisioning scripts.
* Before packaging up the box, ssh in, and run the commands that are in the comments at the end of this readme.
* Package up the box with `vagrant package --output ruby-centos-0.1.0.box`. Replace `0.1.0` with the version number.
* Destroy the vm with `vagrant destroy --force`.
* Add the new box to vagrant's local list with: `vagrant box add ruby-centos-010 ruby-centos-0.1.0.box`. Again, replace `010` and `0.1.0` with the version number.
* Delete the `.vagrant` folder with `rm -rf .vagrant`.
* Test out the box by going to a different folder, running `vagrant init ruby-centos-010`, and changing the `Vagrantfile` to fit your needs. Next, run `vagrant up`, and ensure everything is working.
* Create a new version on Atlas.
* Add a new provider to the version. The type should be `virtualbox`. Upload the `.box` file output by the `vagrant package` command above.

### Pre-packaging commands

* `sudo yum clean all`
* `sudo dd if=/dev/zero of=/bigemptyfile bs=1M`
* `sudo rm -rf /bigemptyfile`
* `sudo su`
* `history -c && exit`
* `cat /dev/null > ~/.bash_history && history -c && exit`

### TODO:

* Add 127.0.0.1 for root using:
`CREATE USER 'root'@'127.0.0.1' IDENTIFIED BY 'password';`
`GRANT ALL ON *.* TO 'root'@'127.0.0.1';`

