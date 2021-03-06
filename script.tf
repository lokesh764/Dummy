#!/bin/sh
sudo yum -y update
sudo yum -y install java
sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum -y install jenkins
sudo service jenkins start
sudo chkconfig --add jenkins
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y ansible
sudo yum install docker
sudo curl -O https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py --user
sudo export PATH=~/.local/bin:$PATH
sudo pip3 install awscli --upgrade
