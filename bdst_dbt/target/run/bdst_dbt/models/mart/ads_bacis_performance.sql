
  create view "shared_db"."dbt_schema"."ads_bacis_performance__dbt_tmp"
    
    
  as (
    select * from "shared_db"."dbt_schema"."mcdm_with_metrics"
  );