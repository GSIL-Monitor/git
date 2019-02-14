#!/bin/bash
echo "1.0 卸载原来的jdk"
rpm -qa|grep jdk 
echo "1.1 删除不带有.noarch文件"
rpm -e --nodeps java-1.7.0-openjdk-1.7.0.191-2.6.15.5.el7.x86_64
rpm -e --nodeps java-1.7.0-openjdk-headless-1.7.0.191-2.6.15.5.el7.x86_64
echo "2.0 创建/apps文件夹"
mkdir /apps
cd /apps
mkdir software
echo "3.0 官网下载jdk-8u201-linux-x64.tar.gz"
echo "3.1 开始解压 jdk-8u201-linux-x64.tar.gz"
tar -zxvf jdk-8u201-linux-x64.tar.gz
echo "4.0 配置环境变量"
vi /etc/profile
#java
export JAVA_HOME=/apps/jdk1.8.0_201
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib
