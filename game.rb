require_relative './set.rb'
require_relative './judge.rb'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    set = Set.new(@player1, @player2)
    set.start
  end
end