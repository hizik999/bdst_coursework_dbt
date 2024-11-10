как установить dbt
```bash
pip install --upgrade dbt dbt-core dbt-postgres
```


1. сделал dwh (postgresql)
2. установил dbt
3. загрузил исходные данные seeds (source_...)
4. сделал сруктуру моделей (по инмону) (staging, core, mart)
5. написал staging файлы с обработкой
6. написал core файлы с объединением данных и подсчетом метрик
7. написал mart файл для витрины данных
8. сделал конфиг sources (_ads_sources.yml)
9. написал тесты (schema.yml)