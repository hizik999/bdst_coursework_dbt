
  create view "shared_db"."dbt_schema"."mcdm_with_metrics__dbt_tmp"
    
    
  as (
    select
    channel,
    round(sum(spend) * 1.0 / sum(engagements), 2) as engagement_cost, 
    round(sum(spend) * 1.0 / sum(conversions), 0) as conversion_cost,
    sum(impressions) as impressions,
    round(sum(spend) * 1.0 / sum(clicks), 2) as cpc
from "shared_db"."dbt_schema"."mcdm"
group by channel
  );