### Задание 1
 - Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.
 - На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
 - Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
 - Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
 - На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

<img width="586" height="265" alt="image" src="https://github.com/user-attachments/assets/5ec49cf3-8665-437c-8320-e26654539ad1" />

<img width="560" height="212" alt="image" src="https://github.com/user-attachments/assets/41fdc374-ab45-42eb-bc48-9aa292bb807c" />


<img width="1241" height="543" alt="image" src="https://github.com/user-attachments/assets/6e28619d-48d0-407a-862e-5e46a5947da4" />
<img width="476" height="209" alt="image" src="https://github.com/user-attachments/assets/48858972-3fac-414b-bedb-931f39c3f052" />

<img width="1196" height="476" alt="image" src="https://github.com/user-attachments/assets/2fd55a87-e8d7-4917-b4d6-cc8cd563b0e4" />
<img width="473" height="224" alt="image" src="https://github.com/user-attachments/assets/b6b83f32-1ffc-4588-87b3-448946102d1e" />

<img width="1213" height="496" alt="image" src="https://github.com/user-attachments/assets/9343c92b-878f-4f23-a946-f9a8e45ecb1d" />
<img width="476" height="212" alt="image" src="https://github.com/user-attachments/assets/f80e29a4-98c5-4059-9c54-f21405e46728" />

------

### Задание 2
 - Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного файла.
 - Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
 - Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
 - Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
 - На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

[bash.sh](https://github.com/bd100k/netology/blob/main/sflt-hw-01/bash.sh)

[keepalived.conf](https://github.com/bd100k/netology/blob/main/sflt-hw-01/keepalived.conf)

<img width="1736" height="607" alt="image" src="https://github.com/user-attachments/assets/2ca1ab85-a83d-451e-8171-558758630c7e" />
<img width="1356" height="475" alt="image" src="https://github.com/user-attachments/assets/968b9f13-96e5-4b39-a473-4d675e9dc59e" />

<img width="1012" height="157" alt="image" src="https://github.com/user-attachments/assets/2083b2d0-4fe7-428a-b4bc-efa05fb27d98" />
<img width="1357" height="461" alt="image" src="https://github.com/user-attachments/assets/0c3ea211-35b7-41cb-b036-fe0cf0408ec5" />

<img width="988" height="113" alt="image" src="https://github.com/user-attachments/assets/02a8d067-d705-49f2-affd-2ab17536bd71" />
<img width="1290" height="503" alt="image" src="https://github.com/user-attachments/assets/89c20613-f0de-4ffc-b84c-85007f20e732" />
