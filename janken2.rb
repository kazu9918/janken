require_relative './program.rb'
require_relative './man.rb'
require_relative './judge.rb'

player1 = Program.new
player2 = Man.new
print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
hand1 = player1.show_hand
hand2 = player2.show_hand
judge = Judge.new(hand1, hand2)
print "あなたの手:#{hand1}, プログラムの手:#{hand2}で\n"
puts judge.result

