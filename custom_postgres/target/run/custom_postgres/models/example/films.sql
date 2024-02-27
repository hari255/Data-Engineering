
  
    

  create  table "destination_db"."public"."films__dbt_tmp"
  as (
    SELECT * FROM "destination_db"."public"."films"
  );
  