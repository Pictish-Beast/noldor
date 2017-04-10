# noldor
# AWS Env - Instance noldor , Ubuntu Server 14.04 LTS
#           t2.micro: 1 Core vCPU (up to 3.3 GHz), 1 GiB Memory RAM, 8 GB Storage

# Tips/Tricks
#  chgrp Users *, to fix chmod 400 failing due to group by default none on windows
#  Ubuntu 64-bit check, uname -a
#         version check, lsb_release -a
#         common name, lsb_release -cs eg trusty

#
# apt-get configs
#
# sudo apt-get update
# image-extra to allow Docker to use aufs storage, which makes Docker faster/more efficient
# sudo apt-get install \ 
#    linux-image-extra-$(uname -r) \
#    linux-image-extra-virtual
#
# Docker Install Prep
# https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository
# Install necessary packages to allow apt to use a repository over HTTPS
# sudo apt-get install \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    software-properties-common
# Add Docker’s official GPG key
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
# sudo apt-key fingerprint 0EBFCD88
#
# set up the stable repository
# sudo add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"
# 
# Install Docker
# sudo apt-get update
# sudo apt-get install docker
#
# Install succeeded by no docker found got following error
# "The program 'docker' is currently not installed. You can install it by typing:
# sudo apt-get install docker"
#
# Fixed with sudo apt-get install docker.io
# Installed Docker version 1.6.2, build 7c8fca2

