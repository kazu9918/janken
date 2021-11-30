class Sets
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1count = 0
    @player2count = 0
    @sets = []
  end

  def push(set)
    @sets << set
    @player1count = @sets.count{|set| set.winner == @player1}
    @player2count = @sets.count{|set| set.winner == @player2}
  end

  def print_count
    puts "第#{@sets.size + 1}セット"
    puts "現在: #{@player1.name}#{@player1count}勝 #{@player2.name}#{@player2count}勝です"
  end

  def finished?
    @player1count < 2 && @player2count < 2
  end

  def print_result
    print "最終結果： #{@player1.name}#{@player1count}勝 #{@player2.name}#{@player2count}勝で"
    if @player1count > @player2count
      print "#{@player1.name}の勝ちです"
    else
      print "#{@player2.name}の勝ちです"
    end
  end
end
