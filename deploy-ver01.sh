#!/bin/bash
######################################
# Versi - 01
# 3 Controllers, 2 Computes, 3 Ceph
# Neutron SDN
# ComputeInstanceHA
# First deployment]
######################################

date
time openstack overcloud deploy --templates \
-r ~/templates/custom_roles_data.yaml \
-e ~/templates/overcloud_images.yaml \
-e ~/templates/00-node-info.yaml \
-e ~/templates/04-domain.yaml \
-e ~/templates/06-timezone.yaml \
-e ~/templates/10-inject-trust-anchor-hiera.yaml \
-e ~/templates/30-network-isolation.yaml \
-e ~/templates/32-network-environment.yaml \
-e ~/templates/34-interface-mapping.yaml \
-e ~/templates/36-fixed-ip-vips.yaml \
-e ~/templates/38-neutron-ovs-dvr.yaml \
-e ~/templates/40-octavia.yaml \
-e ~/templates/42-cinder-backup.yaml \
-e ~/templates/50-ceph-ansible.yaml \
-e ~/templates/52-ceph-config.yaml \
-e ~/templates/62-fencing.yaml \
-e ~/templates/66-compute-instanceha.yaml \
-e ~/templates/68-low-memory-usage.yaml \
--log-file overcloud_deployment_v01.log \
--timeout 120 \
--ntp-server 10.61.4.10
