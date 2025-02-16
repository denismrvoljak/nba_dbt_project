select
    team_id,
    abbreviation,
    nickname,
    yearfounded,
    city,
    arena,
    arenacapacity,
    owner,
    generalmanager,
    headcoach,
    dleagueaffiliation,
    facebook,
    instagram,
    twitter
from {{ source('nba', 'team_details')}}