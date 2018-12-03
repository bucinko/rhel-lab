#/usr/bin/env bash

[ -d  /var/lib/libvirt/storage-pool ] || mkdir /var/lib/libvirt/storage-pool

virsh pool-define-as --type dir --name storage-pool  --target /var/lib/libvirt/storage-pool
virsh pool-autostart storage-pool
virsh pool-start storage-pool

