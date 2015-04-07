FROM debian:wheezy
MAINTAINER Jimmy Huang <jimmy@netivism.com.tw>

# Install MariaDB.
RUN \
  apt-get install python-software-properties && \
  apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db && \
  add-apt-repository 'deb http://mirrors.opencas.cn/mariadb/repo/10.0/debian wheezy main' && \
  apt-get update && \
  apt-get install -y mariadb-server

ADD sources/mysql/my.cnf /etc/mysql/my.cnf
