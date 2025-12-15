##### Задание 1
Установите Zabbix Server с веб-интерфейсом.

Процесс выполнения
1. Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции.
2. Установите PostgreSQL. Для установки достаточна та версия, что есть в системном репозитороии Debian 11.
3. Пользуясь конфигуратором команд с официального сайта, составьте набор команд для установки последней версии Zabbix с поддержкой PostgreSQL и Apache.
4. Выполните все необходимые команды для установки Zabbix Server и Zabbix Web Server.

Требования к результатам
1. Прикрепите в файл README.md скриншот авторизации в админке.
2. Приложите в файл README.md текст использованных команд в GitHub.

Скриншот <img width="1543" height="952" alt="image" src="https://github.com/user-attachments/assets/3094a425-f397-4c22-b082-9f43780f9379" />

Ниже список команд, использованных для поднятия сервера

    1  sudo apt update && sudo apt upgrade -y
    2  sudo apt install postgresql postgresql-contrib -y
    3  sudo -s
    4  systemctl status postgresql
    5  # wget https://repo.zabbix.com/zabbix/7.4/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.4+ubuntu24.04_all.deb
    6  dpkg -i zabbix-release_latest_7.4+ubuntu24.04_all.deb
    7  wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu24.04_all.deb
    8  dpkg -i zabbix-release_latest_7.0+ubuntu24.04_all.deb
    9  apt update
    10  apt install zabbix-server-pgsql zabbix-frontend-php php8.3-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent
    11  sudo -u postgres createuser --pwprompt zabbix
    12  sudo -u postgres createdb -O zabbix zabbix
    13  zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
    14  nano /etc/zabbix/zabbix_server.conf
    15  systemctl restart zabbix-server zabbix-agent apache2
    16 systemctl enable zabbix-server zabbix-agent apache2
    17  systemctl status zabbix-server zabbix-agent apache2
    18  ip a
