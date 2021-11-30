require_relative "./set.rb"

class Sets
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @sets = []
  end

  def push(set)
    @sets << set
  end

  def player1_win_count
    @sets.count{|set| set.winner == @player1}
  end

  def player2_win_count
    @sets.count{|set| set.winner == @player2}
  end

  def print_count
    puts "第#{@sets.size + 1}セット"
    puts "現在: #{@player1.name}#{player1_win_count}勝 #{@player2.name}#{player2_win_count}勝です"
  end

  def finished?
    player1_win_count < 2 && player2_win_count < 2
  end

  def print_result
    print "最終結果： #{@player1.name}#{player1_win_count}勝 #{@player2.name}#{player2_win_count}勝で"
    if player1_win_count > player2_win_count
      print "#{@player1.name}の勝ちです"
    else
      print "#{@player2.name}の勝ちです"
    end
  end

  def start_set
    print_count
    set = Set.new(@player1, @player2)
    set.start
    push(set)
  end
end
