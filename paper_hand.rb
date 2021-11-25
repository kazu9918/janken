class PaperHand
  def to_s
    "パー"
  end

  def draw_with?(hand)
    hand.is_a?(PaperHand)
  end

  def defeat?(hand)
    hand.is_a?(RockHand)
  end
end