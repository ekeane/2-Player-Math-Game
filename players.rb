#define Player class

class Player
  @@total_players = 0
  @@all_alive = true

  attr_reader :name
  attr_reader :lives

  def initialize(name)
    @lives = 3
    @name = name
    @dead = false
    @@total_players += 1 
  end

  def lose_point
    @lives -= 1 if @lives > 0
    if @lives == 0
      lose_life
    end
  end

  def lose_life
    @dead = true
    @@all_alive = false
  end

end