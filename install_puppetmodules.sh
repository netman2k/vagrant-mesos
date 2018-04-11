#!/bin/bash
. /etc/profile.d/puppet-agent.sh

puppet module install deric-zookeeper --version 0.7.7
puppet module install deric-mesos --version 0.9.0
puppet module install deric-dcos --version 0.4.1
