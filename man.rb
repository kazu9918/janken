require_relative './rock_hand'
require_relative './scissors_hand'
require_relative './paper_hand'
require_relative './strongest_hand'

class Man
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def show_hand
    begin
      print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n[3]:最強手\n(0,1,2,3いずれかを入力してEnter)"
      n = gets.chomp
    end until n == "0" or n == "1" or n == "2" or n == "3"

    if n == "0"
      RockHand.new
    elsif n == "1"
      ScissorsHand.new
    elsif n == "2"
      PaperHand.new
    else
      StrongestHand.new
    end
  end
end