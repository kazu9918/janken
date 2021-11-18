class Man
  def show_hand
    begin
      n = gets.chomp
    end until n == "0" or n == "1" or n == "2"
    n.to_i
  end
end