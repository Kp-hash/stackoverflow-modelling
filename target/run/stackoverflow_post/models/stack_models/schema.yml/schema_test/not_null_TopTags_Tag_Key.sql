select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `future-enigma-338718`.`dbt_stackoverflow`.`TopTags`
where Tag_Key is null



      
    ) dbt_internal_test