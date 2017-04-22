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
#
# Docker Images
#     https://hub.docker.com/_/ubuntu/
#
# Git Setup
# https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository
# http://rogerdudler.github.io/git-guide/
#
# git config --global user.email "you@example.com"
# git config --global user.name "Your Name"

#
# Scala & Play Setup
#
# Setup source required for fetching sbt distribution
# echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
# Fetch public key for sbt build tool
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
# sudo apt-get update
# sudo apt-get install sbt

# https://downloads.lightbend.com/scala/2.12.2/scala-2.12.2.deb
# git clone https://github.com/playframework/play-scala-starter-example.git
#
# Tips & Tricks
#
# Find out package dependencies
# apt-cache dependns <Package Name>
#
# Ubuntu
#   version details
#     cat /etc/*release
#   shell being used
#     echo $0
#
#   Respository Managment
#
#   Ubuntu Packages - http://packages.ubuntu.com
#   Aptitude - https://wiki.debian.org/Aptitude
#   sources.list.d // add new repositories w/o the need to edit the central /etc/apt/sources.list file
#   apt-key is a program that is used to manage a keyring of gpg keys for secure apt. The keyring is kept in the file 
# /etc/apt/trusted.gpg (not to be confused with the related but not very interesting  /etc/apt/trustdb.gpg). 
# apt-key can be used to show the keys in the keyring, and to add or remove a key.
#
# Each time you add another apt repository to /etc/apt/sources.list, you'll also have to give apt its key if you want apt to trust it.
# Once you have obtained the key, you can validate it by checking the key's fingerprint and then signing this public 
# key with your private key. You can then add the key to apt's keyring with apt-key add 
#

# Git
#    .git/info/exclude  #ignore objects and archives, anywhere in the tree
#     Git Cheat Sheet
#         Update/Commit Cycle
#             git pull    // Get Latest
#             git add     // Add any new resources
#             git commit  // Ready for committing 
#                 or git commit -a // Commit all changes
#             git push    // Update changes on github
#        Discard a change
#             git checkout -- <filename>
#        Check changes
#             git diff

#
# Docker
#
# Delete all running and stopped containers
#    docker rm -f $(docker ps -aq)
#

