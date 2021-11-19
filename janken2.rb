require_relative './program.rb'
require_relative './man.rb'
require_relative './judge.rb'

program = Program.new
man = Man.new

print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
program_hand = program.show_hand
man_hand = man.show_hand
judge = Judge.new(program_hand, man_hand)
print judge.result

while judge.draw?
  print "あいこで...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
  program_hand = program.show_hand
  man_hand = man.show_hand
  judge = Judge.new(program_hand, man_hand)
  print judge.result
end
