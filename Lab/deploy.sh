#/usr/bin/env bash


#deploy network
./network/deploy_net.sh

#deploy storage pool
./storage-pool/storage-pool.sh

./vm/ks.sh

./vm/ks1.sh

./vm/ks2.sh