#!/usr/bin/env bash

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Terance Shird <tsh at ihtsdo.org>' -s ${MY_SHELL} -m tsh
cat >/etc/sudoers.d/tsh-ALL <<EOF
tsh     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/tsh-ALL
mkdir ~tsh/.ssh
chmod 700 ~tsh/.ssh
curl https://raw.githubusercontent.com/tshird/ssh_access/master/tshird_rsa.pub >~tsh/.ssh/authorized_keys
chmod 400 ~tsh/.ssh/authorized_keys
chown -R tsh ~tsh/.ssh
