class StrongestHand
  def to_s
    "最強手"
  end

  def draw_with?(hand)
    hand.is_a?(StrongestHand)
  end

  def defeat?(hand)
    true
  end
end