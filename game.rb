require_relative "./set.rb"
require_relative "./sets.rb"

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    sets = Sets.new(@player1, @player2)
    while sets.finished?
      sets.print_count
      set = Set.new(@player1, @player2)
      set.start
      sets.push(set)
    end
    sets.print_result
  end
end
