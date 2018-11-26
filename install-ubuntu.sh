#!/bin/bash
#
# Author: Diogo Alexsander Cavilha <diogocavilha@gmail.com>
# Date: 11.26.2018
#
# This script installs docker and docker-compose automatically.

install_docker() {
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo docker -v
}

install_dockercompose() {
    local url_download="https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)"
    curl -L $url_download > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
    docker-compose -v
}

docker_adduser_info() {
    echo -e "\nRun the following command to be able to run docker as a normal user:"
    echo -e "\nsudo usermod -aG docker <user>\n"
}

install_docker
install_dockercompose
docker_adduser_info
