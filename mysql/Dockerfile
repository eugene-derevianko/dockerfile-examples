FROM symulakr/ubuntu
MAINTAINER Eugene <eugene@symulakr.com>

ENV USER root
ENV PASS aDQt9GRBg0hV3TDaWqUg

RUN \
  apt-get update && \
  apt-get -y install \
          mysql-server-5.5 && \
  rm -rf /var/lib/apt/lists/*

COPY my.cnf /etc/mysql/my.cnf
COPY create_db_mysql.sh create_db_mysql.sh
COPY start.sh start.sh

VOLUME ["/var/lib/mysql"]

RUN rm /usr/sbin/policy-rc.d
CMD ["/start.sh"]

EXPOSE 3306