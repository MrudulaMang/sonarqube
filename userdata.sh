#!/bin/bash

yum update -y

# Install Docker
yum install -y docker

systemctl start docker
systemctl enable docker

usermod -aG docker ec2-user

# Install Docker Compose plugin if needed
mkdir -p /usr/local/lib/docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
  -o /usr/local/lib/docker/cli-plugins/docker-compose
chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

# Create working directory
mkdir -p /opt/sonarqube
cd /opt/sonarqube

# Create compose file
cat <<EOF > docker-compose.yml
version: '3'
services:
  sonarqube:
    image: sonarqube:lts-community
    ports:
      - "9000:9000"
EOF

# Run compose
docker compose up -d