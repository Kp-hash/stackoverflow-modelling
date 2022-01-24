select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select
    splitted_tags
from `future-enigma-338718`.`dbt_stackoverflow`.`TopTags`
where tech_count <= 0
      
    ) dbt_internal_test