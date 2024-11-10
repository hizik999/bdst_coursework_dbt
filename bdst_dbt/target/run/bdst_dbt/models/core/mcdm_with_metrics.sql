
  create view "dbt_database"."public"."mcdm_with_metrics__dbt_tmp"
    
    
  as (
    select
    channel,
    round(sum(spend) / sum(engagements), 2) as engagement_cost,
    round(sum(spend) / sum(conversions), 0) as conversion_cost,
    sum(impressions) as impressions,
    round(sum(spend) / sum(clicks), 2) as cpc
from "dbt_database"."public"."mcdm"
group by channel
  );