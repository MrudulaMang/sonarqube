#!/bin/bash
/*growpart /dev/nvme0n1 4 #grow full size
pvresize /dev/nvme0n1p4 #i wrote coz lvextend may fail
lvextend -r -L +30G /dev/mapper/RootVG-varVol
xfs_growfs /va
*/
# xfx_growfs /home ----no need to use this command when using -r in the above

#installing terraform inbastian to execute terra cmds to run ansible playbook in mongo thru terra to install mongodb database
#yum install -y yum-utils 
#yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
#yum -y install terraform

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
