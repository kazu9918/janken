class RockHand
  def to_s
    "グー"
  end
  
  def draw_with?(hand)
    hand.is_a?(RockHand)
  end

  def defeat?(hand)
    hand.is_a?(ScissorsHand)
  end
end