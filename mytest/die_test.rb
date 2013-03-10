require '../lib/player'
require '../lib/die'
require '../lib/turn'
require '../lib/mygame'

die = Die.new
puts "#{die.roll} should return nil"

die = Die.new
die.roll!
puts "#{die.roll} should equal a random number between one and six."