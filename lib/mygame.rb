class Game
  attr_reader :players, :turns

  def initialize x
    @players = x
    @turns = 0
  end

  def turn
    @turns+=1
  end

  def winner
    all_points=[]
    @players.each  {|player| all_points<<player.points}
    all_points.sort!
    if all_points.select {|x| x==all_points.last}.length>1
      puts "draw!"
    else
      winner = @players.max_by {|player| player.points}
    end
  end

end
