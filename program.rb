require_relative './select_hand'

class Program
  def name
    'コンピューター'
  end

  def select_hand
    n = rand(3)

    select_hand = SelectHand.new(n.to_i)
    select_hand.result
  end
end
