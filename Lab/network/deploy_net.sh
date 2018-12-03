#/usr/bin/env bash

virsh net-create ./outsider.xml
virsh net-start  outsider
virsh  net-autostart  outsider
