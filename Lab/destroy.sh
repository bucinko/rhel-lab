#/usr/bin/env bash

virsh undefine server1
virsh destroy  server1
rm -rf  /var/lib/libvirt/storage-pool/server1


virsh undefine tester1
virsh destroy  tester1
rm -rf  /var/lib/libvirt/storage-pool/tester1


virsh undefine outsider1
virsh destroy  outsider1
rm -rf  /var/lib/libvirt/storage-pool/outsider1


virsh pool-destroy storage-pool
virsh pool-undefine  storage-pool

virsh  net-destroy outsider
