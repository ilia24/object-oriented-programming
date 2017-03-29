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
end
