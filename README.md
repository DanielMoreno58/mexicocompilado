# Mexico Compilado

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Creation

This application was created by [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer)

## Requirements

This application requires:

- Ruby 2.5.1
- Rails 5.2.2
- Postgres SQL

## Getting Started

### 1. Clone the repository
  
Fork this repository with: `git clone git@github.com:DanielMoreno58/mexicocompilado.git`

### 2. Create you local database

After you do that you will need to create your own local database with the user `mexicocompilado_admin`, you can add a password to the user if you want in `config/database.yml` and gave the permissions of `Create role, Create DB, Replication`. [More information](https://www.w3resource.com/PostgreSQL/postgresql-database-roles.php)

Steps for create local database

| Command | Language |
| ------- | -------- |
| 1. `CREATE ROLE mexicocompilado_admin WITH CREATEDB CREATEROLE REPLICATION;` | SQL |
| 2. `rails db:create` | rails bash |
| 3. `rails db:migrate` | rails bash |

## Documentation

## Contributors

| ![imagen 2](https://user-images.githubusercontent.com/25211032/53692695-0878db80-3d5a-11e9-8304-fae5f26d75df.png) | [Daniel Moreno](https://github.com/DanielMoreno58) |
| ---- | ----- |

## Credits

## License
