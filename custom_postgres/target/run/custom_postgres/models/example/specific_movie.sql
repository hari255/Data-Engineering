
  
    

  create  table "destination_db"."public"."specific_movie__dbt_tmp"
  as (
    


SELECT * 
FROM "destination_db"."public"."films"
WHERE title = 'Dunkirk'
  );
  