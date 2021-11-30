require_relative './select_hand'

class Man
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def select_hand
    begin
      print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n[3]:最強手\n#{@name}は(0,1,2,3いずれかを入力してEnter)"
      n = STDIN.gets.chomp
    end until n == "0" or n == "1" or n == "2" or n == "3"

    select_hand = SelectHand.new(n.to_i)
    select_hand.result
  end
end
