require_relative './set.rb'
require_relative './count.rb'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1count = 0
    @player2count = 0
  end

  def start
    begin
      set = Set.new(@player1, @player2)
      set.one_set
      if set.winner == @player1
        @player1count += 1
      else
        @player2count += 1
      end
    end while @player1count < 2 && @player2count < 2
  end
end