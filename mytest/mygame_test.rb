require '../lib/player'
require '../lib/die'
require '../lib/turn'
require '../lib/mygame'


player1 = Player.new ("player1")
player2 = Player.new ("player2")
players = [player1,player2]
game = Game.new(players)

player1.add_points(45)
player2.add_points (45)

game.winner
