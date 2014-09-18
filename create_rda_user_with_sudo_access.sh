#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Rory Davidson <rda at ihtsdo.org>' -s ${MY_SHELL} -m rda
cat >/etc/sudoers.d/rda-ALL <<EOF
rda     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/rda-ALL
mkdir ~rda/.ssh
chmod 700 ~rda/.ssh
curl https://raw.githubusercontent.com/rorydavidson/ssh_access/master/rorydavidson_rsa.pub >~rda/.ssh/authorized_keys
chmod 400 ~rda/.ssh/authorized_keys
chown -R rda ~rda/.ssh
