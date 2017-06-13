	Локальный реестр докер образов - приватный докер хаб

1) Перенести build.sh и docker-compose.yml в удобную для вас директорию
2) Подставить адрес почты в REGISTRY_HTTP_TLS_LETSENCRYPT_EMAIL в docker-compose.yml
3) Запустить build.sh с параметрами имени и пароля для будущего хаба

Запускать командой "docker-compose up -d", останавливать "docker-compose down",
из директории с docker-compose файлом.
Использовать командой "docker pull your.dns.name:443/registry"

Информация взята из:
https://habrahabr.ru/post/320884/
https://docs.docker.com/registry/deploying/
