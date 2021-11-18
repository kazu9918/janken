module JankenAsobi
  class Program
    attr_reader :name
    def initialize
      @name = "program"
    end
  end

  class Man
    attr_reader :name
    def initialize
      @name = "you"
    end
  end

  class HandType
    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
    end

    def show_hand
      print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
    end

    def program_hand
      rand(3)
    end

    def man_hand
      n = gets.chomp
    end
  end

  class Janken
    Hand = ["グー", "チョキ", "パー"]

    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
    end

    def game(n)
      hand1 = @player1.program_hand
      hand2 = @player2.man_hand
      judgement(hand1, hand2)
    end

    def judgement(hand1, hand2)
      print "あなたの手:#{Hand[hand1]}, プログラムの手:#{Hand[hand2]}で\n"
      if hand1 == hand2
        puts "引き分けです。"
        return true
      elsif (hand1 - hand2) % 3 == 1
        puts "あなたの勝ちです"
        return false
      else
        puts "あなたの負けです"
        return false
      end
    end
  end

  def self.play
    player1 = Program.new
    player2 = Man.new
    hand_type = HandType.new(player1, player2)
    1.times {|i| judge.game(i + 1)}
  end
end

JankenAsobi.play
