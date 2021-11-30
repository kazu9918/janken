class RockHand
  def to_s
    "グー"
  end

  def defeat?(hand)
    hand.is_a?(ScissorsHand)
  end
end
