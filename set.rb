require_relative './judge.rb'

class Set
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def one_set
    begin
      hand1 = @player1.show_hand
      hand2 = @player2.show_hand
      puts "あなたの手:#{hand1} プログラムの手:#{hand2}\n"
      judge = Judge.new(hand1, hand2)
      puts judge.result
    end while judge.draw?


    if judge.win?
      @winner = @player1
    else
      @winner = @player2
    end
  end

  def winner
    @winner
  end
end