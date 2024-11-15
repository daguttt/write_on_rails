# WriteOn

A platform that joins writers into a community

## Developing

## Repository

[WriteOn](https://github.com/daguttt/write_on_rails)

### Project setup

#### 1. Environment variables

1. Creat a `.env` file and populate it with the content of `.env.example` file.
2. Replace the values with your own db credentials

> [!NOTE]
> Keep the value of the `DATABASE_NAME` as is. It's not used in development but required to run the project

#### 2. Database setup

1. Create database `rails db:migrate`.
2. Run migrations `rails db:migrate`.
3. Run seeders `rails db:seed`
