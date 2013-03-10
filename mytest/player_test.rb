require '../lib/player'
require '../lib/die'
require '../lib/turn'
require '../lib/mygame'

player = Player.new("vanja")
puts "#{player.points} should equal 0"

puts "#{Player.new("vanja")} should be an instance of Player."

player = Player.new ("vanja")
player.add_points(4)
puts "#{player.points} should equal 4."