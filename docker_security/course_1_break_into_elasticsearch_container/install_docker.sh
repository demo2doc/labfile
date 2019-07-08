#! /bin/bash

echo "开始安装Docker CE，我们将使用软件仓库安装"
# 一、创建仓库
echo "开始第一步创建软件仓库"
#1. 更新apt包的索引
echo "1.更新apt包的索引"
sudo apt-get update
#2. 安装相关的依赖包，使得仓库可以使用https
echo "2. 安装相关的依赖包，使得仓库可以使用https"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
echo "3. 使用官方稳定的仓库"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
echo "开始第二步安装Docker CE版本"
echo "1. 更新apt包的索引"
sudo apt-get update
echo "2. 安装软件和工具"
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "结束安装Docker CE，查看docker版本"
docker version

