
With temp as 
(SELECT   ROW_NUMBER() OVER() AS SurrogateKey,
        id,
         title,
         favorite_count,
         accepted_answer_id,
         answer_count,
         owner_display_name,
         owner_user_id,
         post_type_id,
         creation_date,
         date(creation_date) as tbl_dt,
         DATE_DIFF(last_activity_date,creation_date, DAY) AS days_diff,
         view_count,
         tags,
         score
FROM     {{ source('stackoverflow','stackoverflow_posts')}}
WHERE    answer_count = 0
AND      accepted_answer_id IS NULL
AND view_count > (select avg(view_count)  FROM     {{ source('stackoverflow','stackoverflow_posts')}})
ORDER BY view_count DESC)

SELECT * FROM temp WHERE  days_diff >= 60

