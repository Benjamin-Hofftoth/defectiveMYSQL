FROM mysql:latests

COPY inits.sql /docker-entrypoint-initdb.d./init.sql
ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqldd"]
