
  create view "shared_db"."dbt_schema"."mcdm__dbt_tmp"
    
    
  as (
    WITH mcdm AS (
    SELECT
        *
    FROM "shared_db"."dbt_schema"."ads_tiktok"

    UNION ALL

    SELECT
        *
    FROM "shared_db"."dbt_schema"."ads_facebook"

    UNION ALL

    SELECT
        *
    FROM "shared_db"."dbt_schema"."ads_twitter"

    UNION ALL

    SELECT
        *
    FROM "shared_db"."dbt_schema"."ads_bing"
)

SELECT * FROM mcdm
  );