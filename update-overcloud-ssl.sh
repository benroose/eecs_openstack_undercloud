#!/usr/bin/env bash

cd ~
source ~/stackrc

time openstack overcloud deploy --templates \
        -e /home/stack/templates/enable-tls.yaml \
        -e /home/stack/templates/cloudname.yaml \
        -e /home/stack/templates/inject-trust-anchor.yaml \
        -e /usr/share/openstack-tripleo-heat-templates/environments/tls-endpoints-public-dns.yaml
