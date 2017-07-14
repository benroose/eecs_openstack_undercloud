#!/usr/bin/env bash

sudo rpm -vi http://rhss.wichita.edu/pub/katello-ca-consumer-latest.noarch.rpm

#For Test Servers
#sudo subscription-manager register --org="wsu_eecs" --activationkey="RHEL 7 OpenStack Test Servers"

#For Production Servers
sudo subscription-manager register --org="wsu_eecs" --activationkey="RHEL 7 OpenStack Production Servers"

sudo subscription-manager attach --pool=4028349d5d31deff015d323430ca03e7

sudo subscription-manager repos --disable='*'
sudo subscription-manager repos --enable=rhel-7-server-rpms --enable=rhel-7-server-satellite-tools-6.2-rpms --enable=rhel-7-server-rhceph-2-osd-rpms --enable=rhel-7-server-rhceph-2-mon-rpms  --enable=rhel-7-server-rhceph-2-tools-rpms

sudo yum clean all

sudo yum repolist
