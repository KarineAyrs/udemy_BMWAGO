# Go web application

Project from udemy
course ["Building Modern Web Applications with Go"](https://www.udemy.com/course/building-modern-web-applications-with-go/?utm_source=adwords&utm_medium=udemyads&utm_campaign=WebDevelopment_v.PROF_la.EN_cc.ROWMTA-B_ti.8322&utm_content=deal4584&utm_term=_._ag_80869579591_._ad_533999956732_._kw__._de_c_._dm__._pl__._ti_dsa-774930035449_._li_1010561_._pd__._&matchtype=&gclid=CjwKCAjwitShBhA6EiwAq3RqA2Us5UeJf2mg1ZkllcgFhNgF8NePEAoD0p800FmWj48edGZzQ9wXxxoCI3QQAvD_BwE).

How to run:

1. pull `postgres:11.17-alpine` image for DB
2. run container with
   postgres: `docker run --rm -it -e POSTGRES_HOST_AUTH_METHOD=trust -p 5432:5432  postgres:11.17-alpine`
3. create db bookings:
    - `psql -h 127.0.0.1 -U postgres`
    - `create database bookings`
4. run migrations under project root folder via: `soda migrate up`

How to create [migrations](https://github.com/gobuffalo/fizz):

1. `sql`:
    - `soda generate sql CreateSomeTable`
2. `fizz`:
    - `soda generate fizz CreateSomeTable`

Run [Simple Post Service](https://github.com/mailhog/MailHog):

- `~/go/bin/MailHog`

PSQL useful commands:

- `\l` - list all databases
- `\c database_name` - choose database
- `\dt` - list tables in database

Go test coverage in html page:

- `go test -coverprofile=coverage.out && go tool cover -html=coverage.out`
