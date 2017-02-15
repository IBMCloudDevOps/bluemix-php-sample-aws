#!/bin/bash
python --version
echo "apt-get -qq update"
sudo apt-get -qq update
echo "apt-get -qq -y install python-dev libssl-dev libffi-dev"
sudo apt-get -qq -y install python-dev libssl-dev libffi-dev

# Boto needed for s3 & elastic-beanstalk
echo "pip install pycrypto pyyaml boto ansible --quiet"
sudo pip install pycrypto pyyaml boto ansible --quiet

echo "apt-get -qq clean"
sudo apt-get -qq clean

#Install required library
echo "git clone -b release-1.0 https://github.com/IBMCloudDevOps/ansible-elastic-beanstalk"
git clone -b release-1.0 https://github.com/IBMCloudDevOps/ansible-elastic-beanstalk
