class Turn
  attr_reader :points, :turns

  def initialize player
    @player = player
    @points = 0
    @steps=[]
  end


  def roller (die)
    5.times do
      die.roll!
      @steps<<die.roll
    end
  end

  def rules
    @steps.sort!
    if @steps[0]==@steps[3]or @steps[1]==@steps[4]
      @points+=@steps.inject{|sum,x| sum + x }
    elsif (@steps[0]==@steps[1] and @steps[2]==@steps[4])or (@steps[0]==@steps[2] and @steps[3]==@steps[4])
      @points+=25
    elsif
      @steps[4]-@steps[0]==2
      @points+=40
    elsif
      @steps[0]==@steps[-1]
      @points+=50
    end
    @player.add_points(@points)
  end
  end

