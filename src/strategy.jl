abstract type Strategy end

"""
    getmove(board, s::Strategy)
"""
function getmove end

"""
    playgame(g::Game, s1::Strategy, s2::Strategy)
    playgame(board, s1::Strategy, s2::Strategy)
"""

#TODO: decide output
function playgame(board, s::Vararg{Strategy})

    while !isempty(getmoves(board))
        p = playerturn(board)
        m = getmove(board, s[p])
        board = play(board, m)
    end

    return board#TODO
end

playgame(g::Game, s::Vararg{Strategy}) = playgame(initialboard(g), s...)

"""
    name(s::Strategy)
"""
function name end