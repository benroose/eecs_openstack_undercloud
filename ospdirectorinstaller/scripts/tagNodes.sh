#!/usr/bin/bash

source /home/stack/stackrc

#Controllers
ironic node-update 73889415-265c-4f61-9f3c-26707046623d add properties/capabilities='profile:control,boot_option:local'
ironic node-update 93904f20-50b9-473c-b479-006dad63475d add properties/capabilities='profile:control,boot_option:local'
ironic node-update f0faec6f-1503-4090-9bd5-797afe33fded add properties/capabilities='profile:control,boot_option:local'

#Computes
ironic node-update cad8f80d-8d77-43a9-ab02-500df21a7c2c add properties/capabilities='profile:compute,boot_option:local'
ironic node-update d120899d-a9f7-488c-9625-2f3218233fb8 add properties/capabilities='profile:compute,boot_option:local'
ironic node-update c95da744-f321-4900-aa26-a45711425940 add properties/capabilities='profile:compute,boot_option:local'
