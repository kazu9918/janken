require_relative './judge.rb'

class Set
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    begin
      hand1 = @player1.select_hand
      hand2 = @player2.select_hand
      puts "#{@player1.name}の手:#{hand1} #{@player2.name}手:#{hand2}\n"
      judge = Judge.new(@player1.name, @player2.name, hand1, hand2)
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
