#!/usr/bin/env bash

# Install pre-reqs.
yum install -y tree git rpm-build ruby-devel gcc gcc-c++ autoconf automake

# Install fpm.
gem install fpm
