class Judge
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def result
    if draw?
      "引き分けです"
    elsif win?
      "あなたの勝ちです"
    else
      "あなたの負けです"
    end
  end

  def draw?
    @hand1.draw_with?(@hand2)
  end

  def win?
    @hand1.defeat?(@hand2)
  end
end