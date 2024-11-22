УСТАНОВИТЬ ПРОЕКТ: git clone --recurse-submodules https://github.com/LevorukiyI/book_service_app.git
ЗАПУСТИТЬ ПРОЕКТ: docker-compose up --build

Для запуска не через докер можно перейти в подмодуль:

Просто ссылка: https://github.com/LevorukiyI/book_service
GIT: https://github.com/LevorukiyI/book_service.git

Просто ссылка: https://github.com/LevorukiyI/auth_service
GIT: https://github.com/LevorukiyI/auth_service.git

Просто ссылка: https://github.com/LevorukiyI/library_service
GIT: https://github.com/LevorukiyI/library_service.git


SWAGGER дока:
для получения документации, нужно запустить проект и перейти по ссылке: 
swagger документация: 
http://localhost:8082/swagger-ui/index.html - library_service
http://localhost:8081/swagger-ui/index.html - auth_service
http://localhost:8080/swagger-ui/index.html - book_service

ЛОКАЛЬНО: 
Чтобы запустить проект локально нужно зайти в application-local.yml 
и ввести данные от вашей локальной бд. 
затем изменить профиль сборки maven на local
и обновить сборку мавен После чего можно запустить проект локально

ТЕСТЫ:
Для запуска тестов нужно запустить движок docker, для работы тестовых контейнеров

затем изменить профиль сборки maven на test и
обновить сборку мавен После чего можно запустить тесты
ИЛИ mvn clean test -P test
