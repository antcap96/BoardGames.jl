abstract type Game{B,M} end

"""
    boardtype(game)

Return the type of the board for game
"""
boardtype(::Game{B,M}) where {B,M} = B
boardtype(g::Type{G}) where G <: Game = boardtype(g())

"""
    movetype(game)

Return the type of the move for game
"""
movetype(::Game{B,M}) where {B,M} = M
movetype(g::Type{G}) where G <: Game = movetype(g())

"""
    play(board, move)

Play move on the board and return the resulting board
"""
function play end

"""
    play!(board, move)

Play move on the board, changing the argument
"""
function play! end

"""
    getmoves(board)

Return the available moves. If the array is empty, the game is assumed over
"""
function getmoves end

"""
    initialboard(game)
"""
function initialboard end

initialboard(game::Game{B,M}) where {B,M} = B()

"""
    playerturn(board) -> Int

Return the player who's to move next
"""
function playerturn end

"""
    winner(board) -> Int

Return the player who just won the game
"""
function winner end
