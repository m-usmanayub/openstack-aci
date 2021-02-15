#!/bin/bash
######################################
# Versi - 01
# 3 Controllers, 2 ComputeInstanceHA
# Neutron OPFLEX
# ComputeInstanceHA
# First deployment
######################################

date
time openstack overcloud deploy --templates \
-r ~/templates/00-aci_roles_data.yaml \
-e ~/templates/overcloud_images.yaml \
-e ~/templates/ciscoaci_containers.yaml \
-e ~/templates/01-node-info.yaml \
-e ~/templates/04-domain.yaml \
-e ~/templates/06-timezone.yaml \
-e ~/templates/10-inject-trust-anchor-hiera.yaml \
-e ~/templates/30-network-isolation.yaml \
-e ~/templates/32-network-environment.yaml \
-e ~/templates/34-interface-mapping.yaml \
-e ~/templates/36-fixed-ip-vips.yaml \
-e ~/templates/40-octavia.yaml \
-e ~/templates/42-cinder-backup.yaml \
-e ~/templates/50-cinder-custom-backends-netapp.yaml \
-e ~/templates/51-cinder-netapp-config.yaml \
-e ~/templates/52-storage-environment.yaml \
-e ~/templates/53-manila-netapp-config.yaml \
-e ~/templates/62-fencing.yaml \
-e ~/templates/64-compute-instanceha-extraconfig.yaml \
-e ~/templates/66-compute-instanceha.yaml \
-e ~/templates/68-low-memory-usage.yaml \
-e ~/templates/69-scheduler-hints.yaml \
-e ~/templates/70-aci_cs.yaml \
-e /home/stack/templates/82-rhel-registration-resource-registry.yaml \
-e /home/stack/templates/84-environment-rhel-registration.yaml \
--log-file overcloud_deployment_v01.log \
--timeout 120 \
--ntp-server 10.61.4.10
