select
    game_id,
    game_date,
    attendance
 from {{ source('nba', 'game_info')}}
 where game_date > '2019-10-01' -- take only games from 2019-2020 season