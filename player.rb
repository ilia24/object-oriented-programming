class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    levels = 0

    if @gold_coins % 10 == 0
      levels += 1
    end

    if levels > 0
      @lives += 1
      levels -= 1
      puts "Level up!"
    end
  end

  def do_battle
    @health_points -= 1

    if @health_points == 0
      @health_points += 10
      @lives -= 1
      puts "You have lost a life! You have #{@lives} remaining"
    end

    if @lives == 0
      puts "you lose! Restarting..."
      @gold_coins = 0
      @health_points = 10
      @lives = 5
    end
  end
end
