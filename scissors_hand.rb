class ScissorsHand
  def to_s
    "チョキ"
  end

  def draw_with?(hand)
    hand.is_a?(ScissorsHand)
  end

  def defeat?(hand)
    hand.is_a?(PaperHand)
  end
end