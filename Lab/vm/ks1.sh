#/usr/bin/env bash



virt-install --name=tester1 \
--disk path=/var/lib/libvirt/storage-pool/server1,size=40,cache=none \
--graphics none \
--console pty,target_type=serial \
--vcpus=1 --ram=2048 \
--location=ftp://192.168.122.1/pub/rhel7/core \
--network bridge=virbr0 \
--os-type=linux --os-variant=centos7.0 \
--extra-args="console=ttyS0,115200n8 serial ks=ftp://192.168.122.1/pub/rhel7/ks1.cfg" &
