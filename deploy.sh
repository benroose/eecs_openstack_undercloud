#!/usr/bin/env bash

cd ~
source ~/stackrc

#       -e /usr/share/openstack-tripleo-heat-templates/environments/ceph-radosgw.yaml \

time openstack overcloud deploy --templates \
        -e /home/stack/templates/timezone.yaml \
        -e /home/stack/templates/enable-tls.yaml \
        -e /home/stack/templates/cloudname.yaml \
        -e /home/stack/templates/inject-trust-anchor.yaml \
        -e /usr/share/openstack-tripleo-heat-templates/environments/tls-endpoints-public-dns.yaml \
        -e /home/stack/templates/ceilometer.yaml \
        -e /home/stack/templates/fernet.yaml \
	-e /home/stack/templates/puppet-ceph-external.yaml \
	-e /usr/share/openstack-tripleo-heat-templates/environments/cinder-backup.yaml \
	-e /home/stack/templates/network-isolation.yaml \
	-e /home/stack/templates/network-environment.yaml \
	-e /home/stack/templates/firstboot-environment.yaml \
	--control-flavor control \
	--compute-flavor compute \
	--ceph-storage-flavor ceph-storage \
	--control-scale 3 \
	--compute-scale 3 \
	--ceph-storage-scale 0 \
	--ntp-server 156.26.180.38 \
        --timeout 90
