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
    nplayers,

    # strategy functions
    getmove,
    playgame,
    name,
    getvarsnames,
    getvalues,
    setvalue!

include("game.jl")
include("strategy.jl")

# Write your package code here.

end
