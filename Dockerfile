# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем DBT и нужный адаптер для PostgreSQL
RUN pip install dbt-core dbt-postgres

# Копируем локально созданный проект DBT
COPY ./bdst_dbt /dbt/bdst_dbt

# Устанавливаем рабочую директорию проекта
WORKDIR /dbt/bdst_dbt
