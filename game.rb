require_relative './set.rb'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1count = 0
    @player2count = 0
  end

  def start
    begin
      set = Set.new(@player1, @player2)
      puts "第#{@player1count + @player2count + 1}セット"
      puts "現在: あなた#{@player1count}勝 コンピューター#{@player2count}勝です"
      set.one_set
      if set.winner == @player1
        @player1count += 1
      else
        @player2count += 1
      end
    end while @player1count < 2 && @player2count < 2
    print "最終結果: あなた#{@player1count}勝 コンピューター#{@player2count}勝で "
    if @player1count > @player2count
      print "あなたの勝ちです"
    else
      print "コンピューターの勝ちです"
    end
  end
end