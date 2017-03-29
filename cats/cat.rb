class  Cat
  attr_reader :name, :meal_time, :preferred_food


  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time < 12
      return "#{meal_time} AM"
    else
      return "#{meal_time - 12} PM"
    end
  end

end
