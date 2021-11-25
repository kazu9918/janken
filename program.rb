require_relative './rock_hand'
require_relative './scissors_hand'
require_relative './paper_hand'

class Program
  def show_hand
    n = rand(3)

    if n == 0
      RockHand.new
    elsif n == 1
      ScissorsHand.new
    else
      PaperHand.new
    end
  end
end