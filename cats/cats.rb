puts "Cat script loaded"
source './cat.rb'


muezza = Cat.new("muezza", "fish", 15)
misha = Cat.new("misha", "catnip", 9)

puts "Cat script finished"

misha.meow
muezza.meow
