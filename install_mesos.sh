#!/bin/bash
rpm -Uhv http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-3.noarch.rpm
yum install -y mesos-1.3.0-2.0.3 mesosphere-zookeeper
