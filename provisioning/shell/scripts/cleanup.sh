#!/bin/bash -eux

apt-get remove -y chef chef-zero puppet puppet-common
apt-get autoremove -y
apt-get clean -y
apt-get autoclean -y
