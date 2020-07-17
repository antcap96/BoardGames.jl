abstract type Game{B,M} end

"""
    play(board, move)
"""
function play end

"""
    getmoves(board)

Return the available moves. If the array is empty, the game is assumed over
"""
function getmoves end

"""
    startingboard(game::Game)
"""
function initialboard end

initialboard(game::Game{B,M}) where {B,M} = B()

"""
    playerturn(board)::Int

Return the player's who's to move next
"""
function playerturn end