# Database Workbench with Docker

This repository contains Docker configurations for running a Database Workbench with various types of databases. Currently, it supports PostgreSQL, but the plan is to extend it to support NoSQL databases and other types of databases.

## Directory Structure

- **.gitignore**
- **Docker-Compose/**
    - `docker-compose-sql-workbench.yml`
- **DockerFiles/**
    - `PgAdmin.Dockerfile`
    - `Postgres.Dockerfile`

## Setup

1. Clone this repository:

    ```bash
    git clone <repository-url>
    ```

2. Navigate to the `Docker-Compose/` directory:

    ```bash
    cd Docker-Compose/
    ```

3. Create a `.env` file with the following content:

    ```bash
    POSTGRES_USER=postgres
    POSTGRES_PASSWORD=password
    POSTGRES_DB=mydatabase
    PGADMIN_DEFAULT_EMAIL=user@domain.com
    PGADMIN_DEFAULT_PASSWORD=password
    ```

    Replace the placeholders with your values.

4. Build the Docker images:

    ```bash
    docker-compose -f docker-compose-sql-workbench.yml build
    ```

5. Run the Docker containers:

    ```bash
    docker-compose -f docker-compose-sql-workbench.yml up -d
    ```

    After running these commands, you should have a PostgreSQL server running on port 5432 and a pgAdmin server running on port 80. Connect to the PostgreSQL server with pgAdmin using the credentials in your `.env` file.

## Future Plans

The plan is to extend this setup to include NoSQL databases and other types. This involves adding additional services in the `docker-compose.yml` file for each new database and creating new Dockerfiles for each new database.

## Cleanup

To stop and remove the containers, run:

```bash
docker-compose -f docker-compose-sql-workbench.yml down
```

To remove the Docker volumes, run:

```bash
docker volume rm Docker-Compose_db_data Docker-Compose_pgadmin_data
```