FROM debian:oldstable-slim

RUN apt update -y
RUN apt upgrade -y
RUN apt install mariadb-server -y
# RUN service mariadb start

# service mariadb status

# RUN mysql_upgrade
# RUN mysql_install_db //////
# RUN apt install mariadb-client -y //////

COPY ./tools/script.sh /home/mdb-script.sh

RUN chmod +x /home/mdb-script.sh

EXPOSE 3306

# RUN service mariadb start

# RUN ls /var/run/mysqld/
# RUN mysql -u root -e "CREATE DATABASE luis;"
# RUN mysql -u root -e "CREATE USER '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';"
# RUN mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';"
# RUN mysql -u root -e "FLUSH PRIVILEGES;"
# RUN mysqladmin -u root password "$SQL_ROOT_PASSWORD"
# RUN mysqladmin -u root -p"$SQL_ROOT_PASSWORD" shutdown
# # RUN exec mysqld_safe --bind-address=0.0.0.0

# ENTRYPOINT [ "mysqld_safe" "--bind-address=0.0.0.0" ]

ENTRYPOINT [ "/home/mdb-script.sh" ]

# FROM debian:buster

# RUN apt-get -y update && apt-get -y upgrade

# RUN apt-get -y install mariadb-server

# COPY ./tools/script.sh /home

# RUN chmod 755 /home/script.sh

# RUN mysql_install_db

# EXPOSE 3306

# ENTRYPOINT [ "/home/script.sh" ]
