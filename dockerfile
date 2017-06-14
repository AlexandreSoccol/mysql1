version: '2'

services:
 mariadb:
  image: mariadb
  ports:
   - "3306:3306"
  volumes:
   - /home/database/n1:/var/lib/mysql
  environment:
   - MYSQL_ROOT_PASSWORD=uceff2016
  networks:
   - N1
 wordpress:
  image: wordpress
  ports:
   - "80:80"
  environment:
   - WORDPRESS_DB_HOST=mariadb
   - WORDPRESS_DB_USER=root
   - WORDPRESS_DB_PASSWORD=uceff2016
  networks:
   - N1
networks:
 N1:
  driver: bridge
