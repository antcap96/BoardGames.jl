module BoardGames

#using...

export
    # Abstract types
    Game,
    Strategy,

    # game functions
    play,
    getmoves,
    initialboard,
    playerturn,
    winner,

    # strategy functions
    getmove,
    playgame

include("game.jl")
include("strategy.jl")

# Write your package code here.

end
