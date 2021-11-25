require_relative './judge.rb'

class Set
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def one_set
    # name1 = @player1.get_name
    # name2 = @player2.get_name
    begin
      hand1 = @player1.show_hand
      hand2 = @player2.show_hand
      puts "あなたの手:#{hand1} コンピューターの手:#{hand2}\n"
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