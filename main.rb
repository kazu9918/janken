require_relative './man.rb'
require_relative './program.rb'
require_relative './game.rb'
require_relative './set.rb'

player1 = Man.new
player2 = Program.new
game = Game.new(player1, player2)
game.start