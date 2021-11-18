class Judge
  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def result
    if @hand1 == @hand2
      "引き分けです。"
    elsif (@hand1 - @hand2) % 3 == 1
      "あなたの勝ち"
    else
      "あなたの負けです"
    end
  end
end