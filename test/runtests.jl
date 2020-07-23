using BoardGames
using Test

include("TicTacToe.jl")
include("RandomStrategy.jl")

b = TicTacToeBoard()
b = play(b, 5) #x

function somemoves()
    b = TicTacToeBoard()
    b = play(b, 5) #x
    b = play(b, 1) #o
    b = play(b, 2) #x
    b = play(b, 7) #o
    b = play(b, 8) #x

    b
end

@testset "BoardGames.jl" begin
    # Write your tests here.

    @test b.v == [0,0,0,0,1,0,0,0,0]
    @test getmoves(b) == [1,2,3,4,6,7,8,9]
    @test somemoves().winner == 1

    @test typeof(playgame(TicTacToe(), RandomStrategy(), RandomStrategy())) ==
          TicTacToeBoard

end
