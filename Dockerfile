# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем DBT и нужный адаптер для PostgreSQL
RUN pip install dbt-core dbt-postgres

# Создаем рабочую директорию для DBT
WORKDIR /dbt

# Инициализация проекта и настройка имени проекта (замените "my_project" на нужное имя проекта)
RUN dbt init bdst_dbt

# Устанавливаем рабочую директорию проекта
WORKDIR /dbt/bdst_dbt
