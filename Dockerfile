FROM mysql:latest

ENV  MYSQL_ROOT_PASSWORD=R00t
ENV  MYSQL_PASSWORD=P4$$W0rd
ENV  MYSQL_DATABASE=test
ENV  MYSQL_USER=test

VOLUME /var/lib/mysql/

COPY init.sql /docker-entrypoint-initdb.d./init.sql
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
