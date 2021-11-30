require_relative './man.rb'
require_relative './program.rb'
require_relative './game.rb'

print "player1の名前を教えて下さい"
player1 = Man.new(gets.chomp)
print "player2の名前を教えて下さい"
player2 = Man.new(gets.chomp)
game = Game.new(player1, player2)

game.start
