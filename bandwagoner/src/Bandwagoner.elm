module Bandwagoner exposing (..)

type alias Coach = {
    name: String,
    formerPlayer: Bool
    }

type alias Stats = {
    wins: Int,
    losses: Int
    }

type alias Team = {
    name: String,
    coach: Coach,
    stats: Stats
    }

replaceCoach: Coach -> Team -> Team
replaceCoach newCoach team =
    { team | coach = newCoach }

createTeam: String -> Stats -> Coach -> Team
createTeam name stats coach =
    { name = name
    , coach = coach
    , stats = stats 
    }

rootForTeam: { a | stats: Stats } -> Bool
rootForTeam team =
    let
        { stats } = team
    in
        stats.wins > stats.losses
