class Player
  attr_reader :points, :name

  def initialize (player_name)
      @name=player_name
      @points=0
    end

    def add_points (new_points)
      @points+=new_points
    end
  end