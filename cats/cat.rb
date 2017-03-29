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

  def meow
    if meal_time < 12
      time = "#{meal_time} AM"
    else
      time = "#{meal_time - 12} PM"
    end
    return "Meow! I am #{name} i like to eat #{preferred_food} at #{time}"
  end
end
