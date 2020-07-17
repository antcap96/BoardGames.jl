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
function playgame(board, s1::Strategy, s2::Strategy)

    while !isempty(getmoves(board))
        p = playerturn(board)

        if p == 1
            m = getmove(board, s1)
        else #if p == 2
            m = getmove(board, s2)
        end

        board = play(board, m)
    end

    return #TODO
end

playgame(g::Game, s1::Strategy, s2::Strategy) = playgame(initialboard(g), s1, s2)