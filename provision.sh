#!/usr/bin/env bash

# Install vim, screen, etc.
sudo yum install -y vim screen tree git colordiff man man-pages rpm-build ntp

# Start ntpd.
sudo service ntpd start
sudo chkconfig ntpd on

# Install ruby v2.3.1.
sudo su
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby=2.3.1
source /usr/local/rvm/scripts/rvm
exit
source /usr/local/rvm/scripts/rvm

# Install fpm.
sudo su
gem install fpm
exit

# Custom bashrc files.
cp /vagrant/config/bash/vagrant.bashrc /home/vagrant/.bashrc
sudo cp /vagrant/config/bash/root.bashrc /root/.bashrc
