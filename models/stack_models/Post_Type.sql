SELECT 
    ROW_NUMBER() OVER() AS post_tbl_key,
    post_type_id
FROM {{ ref('TrendingTopics') }}
