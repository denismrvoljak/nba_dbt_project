select
    game_id,
    game_date,
    season_id,
    team_name_home,
    team_name_away,
    case when wl_home = 'W' then 1 else 0 end as win_home,
    case when wl_home = 'L' then 1 else 0 end as win_away,
    pts_home,
    pts_away,
    attendance
from {{ ref('int_team_game_stats')}}
