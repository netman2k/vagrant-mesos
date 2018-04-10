#!/bin/bash
rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
useradd -r puppet
rpm -qi puppet-agent > /dev/null || yum install puppet-agent -y
