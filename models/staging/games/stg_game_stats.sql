select
    game_id,
    game_date,
    season_id,
    season_type,
    team_id_home,
    team_id_away,
    wl_home,
    min as game_minutes,
    fgm_home,
    fga_home,
    fgm_away,
    fga_away,
    fg3m_home,
    fg3a_home,
    fg3m_away,
    fg3a_away,
    ftm_home,
    fta_home,
    ftm_away,
    fta_away,
    oreb_home,
    oreb_away,
    dreb_home,
    dreb_away,
    ast_home,
    ast_away,
    stl_home,
    stl_away,
    blk_home,
    blk_away,
    tov_home,
    tov_away,
    pf_home,
    pf_away,
    pts_home,
    pts_away,
    plus_minus_home,
    plus_minus_away
from {{ source('nba', 'game')}}
where game_date > '2019-10-01' -- take only games from 2019-2020 season