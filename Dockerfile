FROM debian:wheezy
MAINTAINER Jimmy Huang <jimmy@netivism.com.tw>

# Install MariaDB.
RUN \
  apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db && \
  echo "deb http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.0/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list && \
  apt-get update && \
  apt-get install -y mariadb-server && \
  rm -rf /var/lib/apt/lists/*

ADD sources/mysql/my.cnf /etc/mysql/my.cnf
