require_relative './judge.rb'

class Set
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    begin
      hand1 = @player1.show_hand
      hand2 = @player2.show_hand
      hands = ["グー", "チョキ", "パー"]
      print "あなたの手:#{hands[hand1]}, プログラムの手:#{hands[hand2]}\n"
      judge = Judge.new(hand1, hand2)
      print judge.result
    end while judge.draw?
  end
end