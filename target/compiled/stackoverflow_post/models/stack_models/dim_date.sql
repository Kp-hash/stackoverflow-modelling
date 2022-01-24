with temp as (SELECT
   tbl_dt,
   EXTRACT(month 
FROM
   tbl_dt) month,
   EXTRACT(quarter 
FROM
   tbl_dt)quarter,
   EXTRACT(year 
FROM
   tbl_dt) year 
FROM
    `future-enigma-338718`.`dbt_stackoverflow`.`TrendingTopics`)

select distinct tbl_dt,month,quarter,year from temp