module BoardGames

#using...

export
    # Abstract types
    Game,
    Strategy,

    # game functions
    boardtype,
    movetype,
    play,
    play!,
    getmoves,
    initialboard,
    playerturn,
    winner,

    # strategy functions
    getmove,
    playgame,
    name

include("game.jl")
include("strategy.jl")

# Write your package code here.

end
