require_relative './man.rb'
require_relative './program.rb'
require_relative './game.rb'

print "player1の名前を教えて下さい"
player1 = Man.new(STDIN.gets.chomp)
print "player2の名前を教えて下さい"
player2 = Man.new(STDIN.gets.chomp)
game = Game.new(player1, player2)
game.start
