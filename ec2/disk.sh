#!/bin/bash
# growpart /dev/nvme0n1 4 #grow full size
# pvresize /dev/nvme0n1p4 #i wrote coz lvextend may fail
# lvextend -r -L +30G /dev/mapper/RootVG-varVol
# xfs_growfs /va

# xfx_growfs /home ----no need to use this command when using -r in the above

#installing terraform inbastian to execute terra cmds to run ansible playbook in mongo thru terra to install mongodb database
#yum install -y yum-utils 
#yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
#yum -y install terraform

# sudo yum install -y yum-utils
# sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# sudo systemctl start docker
# sudo systemctl enable docker
# sudo usermod -aG docker ec2-user


# amazon-linux 2023- 30gb -t3.medium
sudo dnf update -y
sudo dnf install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

sudo curl -L \
https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) \
-o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# http://sonarqube.devopsgeek.online:9000/ - create-r53 record

# docker-compose up -d
#docker logs -f sonarqube
#  docker volume ls
# docker volume inspect sonarqube_sonarqube_data
# [
#     {
#         "CreatedAt": "2026-05-12T08:31:28Z",
#         "Driver": "local",
#         "Labels": {
#             "com.docker.compose.config-hash": "bde01a43d6dbae5d5d72ce2b5da3e38b50f3689924925ebd16fb6a424e87524e",
#             "com.docker.compose.project": "sonarqube",
#             "com.docker.compose.version": "5.1.3",
#             "com.docker.compose.volume": "sonarqube_data"
#         },
#         "Mountpoint": "/var/lib/docker/volumes/sonarqube_sonarqube_data/_data",
#         "Name": "sonarqube_sonarqube_data",
#         "Options": null,
#         "Scope": "local"
#     }
# ]

# sudo rm -f /etc/yum.repos.d/docker-ce.repo ---- deleted repo created by mistake