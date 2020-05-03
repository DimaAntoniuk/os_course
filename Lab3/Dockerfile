FROM mysql/mysql-server

ENV MYSQL_ROOT_PASSWORD: my-secret-ps
WORKDIR /
VOLUME ./docker-mysql:/var/lib/mysql
ADD ["./db_lab_3.sql", "/db.sql"]

RUN /bin/bash -c 'mysql -u root -p${MYSQL_ROOT_PASSWORD} </db.sql'