require_relative './program.rb'
require_relative './man.rb'
require_relative './judge.rb'

begin
  player1 = Program.new
  player2 = Man.new
  print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
  hand1 = player1.show_hand
  begin
    hand2 = player2.show_hand
  end until hand2 == 0 or hand2 == 1 or hand2 == 2
  judge = Judge.new(hand1, hand2)
  Hand = ["グー", "チョキ", "パー"]
  print "あなたの手:#{Hand[hand1]}, プログラムの手:#{Hand[hand2]}で\n"
  puts judge.result
end while hand1 == hand2
