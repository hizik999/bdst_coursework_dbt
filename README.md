1. сделал dwh (postgresql)
2. установил dbt
3. загрузил исходные данные seeds (source_...)
4. сделал сруктуру моделей (по инмону) (staging, core, mart)
5. сделал конфиг sources (_ads_sources.yml)
6. написал staging файлы с обработкой сырых данных (из seed)
7. написал core файлы с объединением данных и подсчетом метрик
8. написал mart файл для витрины данных
9. написал тесты (schema.yml)
10. запустил dbt seed (run, test, seed, snapshot), dbt compile (генерирует sql, можно найти в target/compile)
11. дальше настройка суперсета


настройка superset (каждый раз)
```
docker compose exec superset superset db upgrade
docker compose exec superset superset fab create-admin --username admin --firstname Admin --lastname User --email admin@example.com --password admin
docker compose exec superset superset init

```

после этого в дата 
postgresql://db_user:db_password@db:5432/shared_db?options=-csearch_path%3Ddbt_schema