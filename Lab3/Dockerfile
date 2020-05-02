FROM mysql:8

ENV MYSQL_DATABASE: db_lab_3.sql
ENV MYSQL_ROOT_PASSWORD: my-secret-ps
WORKDIR /
VOLUME /tmp/sql
ADD ["db_lab_3.sql", "/docker-entrypoint-initdb.d/db.sql"]
RUN /etc/init.d/mysql start && \
        mysql -u root -p$MYSQL_ROOT_PASSWORD  -e "GRANT ALL PRIVILEGES ON *.* TO 'dastar'@'%' IDENTIFIED BY 'password';FLUSH PRIVILEGES;" && \
        mysql -u root -p${MYSQL_ROOT_PASSWORD}  < /docker-entrypoint-initdb.d/db.sql