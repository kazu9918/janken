class Man
  def show_hand
    begin
      print "最初はグー、じゃんけん...\n[0]:グー\n[1]:チョキ\n[2]:パー\n(0,1,2いずれかを入力してEnter)"
      n = gets.chomp
    end until n == "0" or n == "1" or n == "2"
    n.to_i
  end
end