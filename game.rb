require_relative './judge.rb'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
    hand1 = @player1.show_hand
    hand2 = @player2.show_hand
    hands = ["グー", "チョキ", "パー"]
    print "あなたの手:#{hands[hand1]}, プログラムの手:#{hands[hand2]}\n"

    judge = Judge.new(hand1, hand2)
    print judge.result
  end
end