select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    tbl_dt as unique_field,
    count(*) as n_records

from `future-enigma-338718`.`dbt_stackoverflow`.`dim_date`
where tbl_dt is not null
group by tbl_dt
having count(*) > 1



      
    ) dbt_internal_test