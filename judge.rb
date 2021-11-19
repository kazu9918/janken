class Judge
  def initialize(hand1, hand2)
    if hand1 == hand2
      @result = "引き分けです。\n"
    elsif (hand1 - hand2) % 3 == 1
      @result = "あなたの勝ち\n"
    else
      @result = "あなたの負けです\n"
    end
  end

  def result
    @result
  end
end