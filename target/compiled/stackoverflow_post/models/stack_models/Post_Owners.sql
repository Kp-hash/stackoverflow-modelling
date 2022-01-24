SELECT
     distinct owner_display_name,
     owner_user_id,
     ROW_NUMBER() OVER() AS owner_tbl_key
FROM `future-enigma-338718`.`dbt_stackoverflow`.`TrendingTopics`