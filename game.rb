require_relative "./sets.rb"

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    sets = Sets.new(@player1, @player2)
    sets.start_set while sets.finished?
    sets.print_result
  end
end
