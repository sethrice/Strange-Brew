#!/bin/sh
# Quick and easy setup of per used shell history

# Exit if already setup
#test -r /etc/profile.d/hist.sh && exit 1

cp -p /mnt/ers13004/unix/bin/hist.sh /etc/profile.d/hist.sh
mkdir -p /var/adm/history
chmod 755 /var /var/adm
chmod 1777 /var/adm/history
chmod 644 /etc/profile.d/hist.sh

echo "# COMPLETE"
exit 0