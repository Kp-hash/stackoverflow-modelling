

  create or replace table `future-enigma-338718`.`dbt_stackoverflow`.`TopTags`
  
  
  OPTIONS()
  as (
    SELECT
  ROW_NUMBER() OVER() AS Tag_Key,
  splitted_tags,
  COUNT(*) AS tech_count
FROM (
  SELECT
    SPLIT(tags,'|') AS TechnologyName
  FROM
    `future-enigma-338718`.`dbt_stackoverflow`.`TrendingTopics`)
CROSS JOIN
  UNNEST(TechnologyName) splitted_tags
GROUP BY
  splitted_tags
ORDER BY
  tech_count DESC
  );
    