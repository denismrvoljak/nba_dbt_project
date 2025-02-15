select
    *
 from {{ source('nba', 'game')}}