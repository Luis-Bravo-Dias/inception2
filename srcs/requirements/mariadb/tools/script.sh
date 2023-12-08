#!/bin/bash

# sleep infinity;
# service mysql start;
service mariadb start
#export SQL_DATABASE=maria SQL_USER=luis SQL_PASSWORD=inception SQL_ROOT_PASSWORD=inception SQL_HOST=mariadb WP_TITLE=kazu_arts WP_ADMIN_USER=kazu WP_ADMIN_PASS=inception WP_ADMIN_EMAIL=kazu_arts@mail.com WP_URL=lleiria-.42.fr WP_USR_NAME=ricardo WP_USR_PASS=inception WP_USR_MAIL=ralves-g@mail.com

mysql -u root -e "CREATE DATABASE $SQL_DATABASE;"
mysql -u root -e "CREATE USER '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"

mysqladmin -u root password "$SQL_ROOT_PASSWORD"

mysqladmin -u root -p"$SQL_ROOT_PASSWORD" shutdown

exec mysqld_safe --bind-address=0.0.0.0

# mysql -u root -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
# mysql -u root -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -u root -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
# mysql -u root -e "FLUSH PRIVILEGES;"

# mysqladmin -u root -p $SQL_ROOT_PASSWORD shutdown
# exec mysqld_safe

# #!/bin/bash

# if [ ! -d "/var/lib/mysql/$SQL_DATABASE" ]; then

# service mysql start;

# sleep 3;


# echo "Creating admin user"
# mysql -u root -e "CREATE DATABASE $SQL_DATABASE;"
# mysql -u root -e "CREATE USER '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD';"
# mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$SQL_USER'@'%';"
# mysql -u root -e "FLUSH PRIVILEGES;"

# echo "Setting password for root user"
# mysqladmin -u root password "$SQL_PASSWORD"

# mysqladmin -u root -p"$SQL_PASSWORD" shutdown
# fi

# exec mysqld_safe --bind-address=0.0.0.0