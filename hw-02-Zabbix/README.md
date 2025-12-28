### Задание 1
Установите Zabbix Server с веб-интерфейсом.

##### Процесс выполнения
1. Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции.
2. Установите PostgreSQL. Для установки достаточна та версия, что есть в системном репозитороии Debian 11.
3. Пользуясь конфигуратором команд с официального сайта, составьте набор команд для установки последней версии Zabbix с поддержкой PostgreSQL и Apache.
4. Выполните все необходимые команды для установки Zabbix Server и Zabbix Web Server.

##### Требования к результатам
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

-----

### Задание 2
Установите Zabbix Agent на два хоста.

##### Процесс выполнения
1. Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции.
2. Установите Zabbix Agent на 2 вирт.машины, одной из них может быть ваш Zabbix Server.
3. Добавьте Zabbix Server в список разрешенных серверов ваших Zabbix Agentов.
4. Добавьте Zabbix Agentов в раздел Configuration > Hosts вашего Zabbix Servera.
5. Проверьте, что в разделе Latest Data начали появляться данные с добавленных агентов.

##### Требования к результатам
1. Приложите в файл README.md скриншот раздела Configuration > Hosts, где видно, что агенты подключены к серверу
   <img width="1919" height="1108" alt="image" src="https://github.com/user-attachments/assets/1434a1f4-9b5f-4159-9ac2-c55141abcf4a" />
3. Приложите в файл README.md скриншот лога zabbix agent, где видно, что он работает с сервером
   <img width="1097" height="414" alt="image" src="https://github.com/user-attachments/assets/ca5ea013-48fa-4e95-8f3f-6a26e4db0230" />
4. Приложите в файл README.md скриншот раздела Monitoring > Latest data для обоих хостов, где видны поступающие от агентов данные.
   <img width="1905" height="1106" alt="image" src="https://github.com/user-attachments/assets/3e569498-2013-44bc-b486-529d7ce80ae5" />
5. Приложите в файл README.md текст использованных команд в GitHub

Ниже список команд, использованных для поднятия агента

    1  sudo apt update && sudo apt upgrade -y
    2  sudo -s
    3  wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu24.04_all.deb
    4  dpkg -i zabbix-release_latest_7.0+ubuntu24.04_all.deb
    5  apt update
    6  apt install zabbix-agent
    7  systemctl restart zabbix-agent
    8  systemctl enable zabbix-agent
    9  ip a
