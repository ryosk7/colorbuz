# colorbuz
Social media and service for startups.
## versions
| Langs          | Versions |
| -------------- | -------- |
| Ruby           | 2.4.2    |
| Rails          | 5.1.4    |
| Docker         | 19.03.1  |
| docker-compose | 1.24.1   |
## setup
```sh
$ docker-compose build
$ docker-compose up
$ docker-compose exec web rails db:migrate
$ open http://localhost:3000
```