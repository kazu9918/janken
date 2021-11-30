class ScissorsHand
  def to_s
    "チョキ"
  end

  def defeat?(hand)
    hand.is_a?(PaperHand)
  end
end
