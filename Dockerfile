FROM mysql:latest

COPY init.sql /docker-entrypoint-initdb.d/init.sql
ENV MYSQL_ROOT_PASSWORD=rootP4ss
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
