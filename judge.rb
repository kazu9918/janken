class Judge
  def initialize(name1, name2, hand1, hand2)
    @name1 = name1
    @name2 = name2
    @hand1 = hand1
    @hand2 = hand2
  end

  def result
    if draw?
      "引き分けです"
    elsif win?
      "#{@name1}の勝ちです"
    else
      "#{@name2}の勝ちです"
    end
  end

  def draw?
    @hand1.draw_with?(@hand2)
  end

  def win?
    @hand1.defeat?(@hand2)
  end
end