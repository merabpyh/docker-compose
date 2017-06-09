	Локальный реестр докер образов - приватный докер хаб

1) Перенести build.sh и docker-compose.yml в удобную для вас директорию
2) Подставить адрес почты в REGISTRY_HTTP_TLS_LETSENCRYPT_EMAIL в docker-compose.yml
3) Подставить свою удобную дикекторию в volumes: в docker-compose.yml
4) Подставить имя пользователя и пароль в переменных build.sh
5) Запустить build.sh выдав права на запуск для скрипта

Запускать командой "docker-compose up -d", останавливать "docker-compose down",
из директории с docker-compose файлом.
