
  create view "dbt_database"."public"."ads_bacis_performance__dbt_tmp"
    
    
  as (
    select * from "dbt_database"."public"."mcdm_with_metrics"
  );