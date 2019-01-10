#!/usr/bin/env bash
 adding stuff for history

MY_SHELL=$( which bash )

/usr/sbin/useradd -c 'Steve Allen <sal at ihtsdo.org>' -s ${MY_SHELL} -m sallen
cat >/etc/sudoers.d/sallen-ALL <<EOF
sallen     ALL=(ALL:ALL) NOPASSWD: ALL
EOF
chmod 0440 /etc/sudoers.d/sallen-ALL
mkdir ~sallen/.ssh
chmod 700 ~sallen/.ssh
curl https://raw.githubusercontent.com/stevesnomed/ssh_access/master/sallen_rsa.pub >~sallen/.ssh/authorized_keys
chmod 400 ~sallen/.ssh/authorized_keys
chown -R sallen ~sallen/.ssh

#More changes
