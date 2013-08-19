class Recipe 
  attr_accessor :name, :steps, :ingrediants
 
  def initialize(name, *ingredients)
    @ingredients = ingredients
    @steps = []
    @name = name
  end
  
  def prepare
    @ingredients.join.split("").shuffle.join
  end
    
  def to_s
    puts "Recipe No. 1 #{@name}"
    puts "=" * 50
    puts #blank
    puts "Ingredients"
    puts "-" * 30
    @ingredients.each_with_index do |ingredient, i|
      puts "#{i+1}. #{ingredient}"
    end
    puts #blank
    puts "Steps"
    puts "-" * 30
    @steps.each_with_index do |step, i|
      puts "#{i+1}. #{step}"
    end
    ""
  end
end


guacamole = Recipe.new("Gucamole for Programmers", "2 Avacados", "Cilantro", "1 Shallot", "2 Cloves of Garlic", "Diced Tomatoes", "Diced Jalapeno", "1 Lime")
puts guacamole.steps #=> []
guacamole.steps[0] = "Peel and Dice the Shallot and Garlic Cloves."
guacamole.steps[1] = "Combine with Diced Avocado."
guacamole.steps[2] = "Combine all ingredients in a bowl, with the juice of 1 Lime."
guacamole.steps[3] = "Add Salt to flavor, and enjoy!"

puts guacamole
puts "Smashing everything up is the fun part!"
puts guacamole.prepare
