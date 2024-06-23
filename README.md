## Запуск:
### При первом взаимодействии с приложением:
```
docker-compose build
docker-compose up
```

### В контейнере создаем базу данных, прогоняем миграции и прогоняем сиды(если нужно):
```
rails db:create
rails db:migrate
rails db:seed
```

### В последующие разы приложение запускаем при помощи команды и просто работаем с ним:
```
docker-compose up
```
### POST "/users" - создание студента. Параметры body: 
{
  "user": {
    "login": "новый_login",
    "password": "новый_password",
    "password_confirmation": "новый_password",
    "role": 2,
    "email": "новый_email@example.com"
  }
}
### DELETE "/users/{user_id}:" - удаление юзера.
### GET "/users - список юзеров.