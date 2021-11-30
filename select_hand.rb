require_relative './rock_hand'
require_relative './scissors_hand'
require_relative './paper_hand'
require_relative './strongest_hand'

class SelectHand
  ROCK_HAND = 0
  SCISSORS_HAND = 1
  PAPER_HAND = 2
  STRONGEST_HAND = 3

  def initialize(num)
    @num = num
  end

  def result
    if @num == ROCK_HAND
      RockHand.new
    elsif @num == SCISSORS_HAND
      ScissorsHand.new
    elsif @num == PAPER_HAND
      PaperHand.new
    elsif @num == STRONGEST_HAND
      StrongestHand.new
    else
      raise NotImplementedError
    end
  end
end
