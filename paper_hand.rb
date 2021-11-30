class PaperHand
  def to_s
    "パー"
  end

  def defeat?(hand)
    hand.is_a?(RockHand)
  end
end
