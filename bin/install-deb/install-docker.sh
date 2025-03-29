#!/bin/bash

error() {
    echo -e "${RED}ERROR：$1${NC}" >&2
}

check_versions() {
    # 检查 docker 是否安装以及版本
    docker_version=$(docker --version | awk '{print $3}' | sed 's/,//')
    if [ -z "$docker_version" ]; then
        error "Docker is not installed or not functioning correctly."
        exit 1
    fi

    docker_major_version=$(echo "$docker_version" | cut -d '.' -f1)
    if [ "$docker_major_version" -lt 26 ]; then
        error "Docker version must be 26 or higher. Current version: $docker_version"
        exit 1
    fi

    # 检查 docker compose 是否可用
    if ! docker compose version &> /dev/null; then
        error "Docker Compose is not functioning correctly. Please ensure it is properly installed."
        exit 1
    fi

    # 获取 docker compose 的版本并去掉 'v'
    compose_version=$(docker compose version | grep "Docker Compose version" | awk '{print $4}' | sed 's/v//')
    if [ -z "$compose_version" ]; then
        error "Failed to determine Docker Compose version."
        exit 1
    fi

    # 直接用字符串比较版本号
    if [[ "$compose_version" < "2.27" ]]; then
        error "Docker Compose version must be 2.27 or higher. Current version: $compose_version"
        exit 1
    fi

    echo "Docker and Docker Compose meet the required versions."
}

# 安装 Docker
install_docker_online() {
    echo "Installing Docker using online APT repository..."
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
      $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
}

install_docker_offline() {
    # 检查系统架构和操作系统版本
    if ! grep -q 'NAME="Ubuntu"' /etc/os-release || ! grep -q 'VERSION_CODENAME=noble' /etc/os-release; then
        error "This product only runs on Ubuntu 24.04 LTS."
        exit 1
    fi

    # 检查架构是否为x86_64
    architecture=$(dpkg --print-architecture)
    if [ "$architecture" != "amd64" ]; then
        error "This product supports only x86_64 architecture."
        exit 1
    fi

    # 安装离线包
    echo "Installing Docker using offline .deb packages..."
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
    sudo dpkg -i $SCRIPT_DIR/../../debs/docker/*.deb
}

main() {
    # 然后检查docker和docker compose的版本
    if command -v "docker" &> /dev/null; then
        check_versions
    else
        echo "Info: Docker Engine not installed, start to install .deb packages..."
        if [ "$1" == "--online" ]; then
          install_docker_online
        else
          install_docker_offline
        fi

    fi
}

main
