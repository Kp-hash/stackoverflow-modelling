
    
    

select
    Tag_Key as unique_field,
    count(*) as n_records

from `future-enigma-338718`.`dbt_stackoverflow`.`TopTags`
where Tag_Key is not null
group by Tag_Key
having count(*) > 1


