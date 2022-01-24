

  create or replace table `future-enigma-338718`.`dbt_stackoverflow`.`Post_Type`
  
  
  OPTIONS()
  as (
    SELECT 
    ROW_NUMBER() OVER() AS post_tbl_key,
    post_type_id
FROM `future-enigma-338718`.`dbt_stackoverflow`.`TrendingTopics`
  );
    