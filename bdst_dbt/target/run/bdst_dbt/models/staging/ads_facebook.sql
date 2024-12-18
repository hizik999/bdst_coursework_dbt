
  
    

  create  table "shared_db"."dbt_schema"."ads_facebook__dbt_tmp"
  
  
    as
  
  (
    WITH ads_facebook AS (
    SELECT
        ad_id,
        add_to_cart,
        adset_id,
        campaign_id,
        channel,
        clicks,
        comments,
        creative_id,
        date,
        clicks + comments + likes + shares + views + purchase + complete_registration AS engagements,
        impressions,
        0 AS installs,
        likes,
        inline_link_clicks as link_clicks,
        0 AS placement_id,
        0 AS post_click_conversions,
        0 AS post_view_conversions,
        0 AS posts,
        purchase,
        complete_registration AS registrations,
        purchase_value AS revenue,
        shares,
        spend,
        purchase AS conversions,
        views AS video_views
    FROM "shared_db"."dbt_schema"."source_ads_facebook"
)

SELECT * FROM ads_facebook
  );
  