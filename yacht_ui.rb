require './lib/player'
require './lib/die'
require './lib/turn'
require './lib/mygame'

puts "Welcome to Yacht!\n\n"
players=[Player.new("player1"),Player.new("player2")]
game = Game.new(players)
die=Die.new


until game.turn==13*players.length
  players.each do |player|
    turn=Turn.new (player)
    turn.roller(die)
    turn.rules
    puts "#{player.name} got #{turn.points} points this turn.\n\n"
    puts "#{player.name} have #{player.points} points total."
  end
end

puts "Congratulations, #{game.winner.name}. You win!"

