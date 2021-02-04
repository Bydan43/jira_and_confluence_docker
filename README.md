# Установка
Скачивае и переходим в папку, посл чего набираем в командной строке:
```bash
docker-compose up -d
```

## Подключение базы данных для Jira-Service Desk
1. Выбираем "Я выполню настройку самостоятельно"
2. "Моя база данных"
3. Прописываем данные базы данных
   - Тип базы данных - MySQL 5.7+
   - Имя хоста - 10.0.10.4
   - Порт - 3306
   - База данных - servicesdesk
   - Имя пользователя - example
   - Парол - *******

## Подключение к базе данных jira
1. Выбираем "My own database"
2. Прописываем
   - Database typ - MySQL
   - Setup type -Simple
   - HostnameThis - 10.0.10.4
   - Port - 3306
   - Database name - conflluence
   - Username - example
   - Password - *******

Конфигурация для подключения к бд записывается в файл **/jirasd-data/dbconfig.xml** файл появляется после поднятия стека docker, для подключения к существующей базе данных необходимо будет отредактировать его, так же, если данный файл отсутствует его можно создать вручную

## Структура катологов
1. confluence - здесь 2 файла для поднятия сервера Confluence
   - dockerfile - развертывет контейнер сервера Confluence v7.2.1
   - mysql-connector-java-5.1.49.jar - драйвер для работы с MYSQL
2. confluence-data - файлы конфигурации сервера Confluence
3. jirasd-data - файлы конфигурации сервера Jira Service Desk
4. jirasd-log - логи Jira Service Desk
5. mysql: 
   - conf - тут находится файл конфигурац сервера MYSQL (mysqld.cnf)
   - init - тут находится файл SQL скрипта (create_databases.sql) для создания баз данных и пользователя для серверов Confluence и Jira Service Desk
6. mysql-db - базы данных MYSQL
7. mysql-log - логи сервера MYSQL
8. mysql-tmp - временные файлы сервера MYSQL
9. nginx_conf - кофигурация Nginx и сертификаты SSL
   - cert - сертификаты SSL
   - include - конфигурации для сервера Confluence Jira Service Desk
   - nginx.conf - общая конфигурация веб сервера Nginx
10. servicedesk - здесь 2 файла для поднятия сервера Jira Service Desk
    - dockerfile - развертывет контейнер сервера Jira Service Desk v4.3.0
    - mysql-connector-java-5.1.49.jar - драйвер для работы с MYSQL
