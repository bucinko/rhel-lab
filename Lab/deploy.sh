#/usr/bin/env bash


#deploy network
virsh net-create network/outsider.xml
virsh net-start  outsider
virsh  net-autostart  outsider



#deploy storage pool
[ -d  /var/lib/libvirt/storage-pool ] || mkdir /var/lib/libvirt/storage-pool

virsh pool-define-as --type dir --name storage-pool  --target /var/lib/libvirt/storage-pool
virsh pool-autostart storage-pool
virsh pool-start storage-pool



./vm/ks.sh

./vm/ks1.sh

./vm/ks2.sh
