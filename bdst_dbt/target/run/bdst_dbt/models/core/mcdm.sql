
  create view "dbt_database"."public"."mcdm__dbt_tmp"
    
    
  as (
    WITH mcdm AS (
    SELECT
        *
    FROM "dbt_database"."public"."ads_tiktok"

    UNION ALL

    SELECT
        *
    FROM "dbt_database"."public"."ads_facebook"

    UNION ALL

    SELECT
        *
    FROM "dbt_database"."public"."ads_twitter"

    UNION ALL

    SELECT
        *
    FROM "dbt_database"."public"."ads_bing"
)

SELECT * FROM mcdm
  );