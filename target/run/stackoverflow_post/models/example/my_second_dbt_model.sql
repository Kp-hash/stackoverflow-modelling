

  create or replace view `future-enigma-338718`.`dbt_stackoverflow`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `future-enigma-338718`.`dbt_stackoverflow`.`my_first_dbt_model`
where id = 1;

