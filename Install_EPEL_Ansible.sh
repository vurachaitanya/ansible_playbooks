### Script installs EPEL repo to Centos/Redhat OS for 7.x Version
#### How to Run : sudo chmod a+x install_EPEL_Ansible.sh && sudo sh install_EPEL_Ansible.sh

#!/bin/bash

# Download and install EPEL repository.
/usr/bin/yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm


# Fully update the system and install Ansible
#/usr/bin/yum -y update
/usr/bin/yum -y install ansible

# Cleanup after ourselves.
/bin/rm -rf /root/epel-release-*.rpm /root/bootstrap_ansible.sh

# Restart the server.
#/sbin/shutdown -r now

exit
