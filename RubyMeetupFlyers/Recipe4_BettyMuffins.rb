class Recipe 
  attr_accessor :name, :steps, :ingredients, :decorations
 
  def initialize(name, *ingredients)
    @ingredients = ingredients
    @steps = []
    @decorations = []
    @name = name
  end
  
  def prepare
    @ingredients.join.split("").shuffle.join
  end
    
  def to_s
    puts "Recipe No. 1 #{@name}"
    puts "//xx" * 20
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
    puts #blank
    puts "Frosting"
    puts "-" * 30
    @decorations.each_with_index do |decorate, i|
      puts "#{i+1}. #{decorate}"
    end
    
    ""
  end
end

puts "Are you a vegan or dairy-lover ?"
yum = gets.chomp
puts #blank
unless yum == 'vegan' || yum == 'dairy-lover' 
    print "No comprende, going to exit stage left!\n"
    exit(1)
end

# Report...  
choice = yum.capitalize
puts "Your choice was: ", choice, "\n"
puts "Okay, here's your #{yum} recipe. Enjoy!\n" if yum == choice      

# The Recipe...
muffins = Recipe.new("Betty's Hard-core #{choice} Muffins", " 2 cups Original Bisquick mix", " 1 cup water", "1/3 cup veg. oil", "4 1/2 teaspoons egg replacer", "3/4 cup fresh or frozen (thawed and drained ) blueberries",
"1 cup of Crisco", "2 cups confectioner sugar", "1/4 cup of water", "1 tsp. lemon extract")      
puts muffins.steps #=> []
muffins.steps[0] = "Heat oven to 400F. Place paper baking cup in each of 12 regular-size muffin cups, or grease bottoms only of muffin cups."
muffins.steps[1] = "Stir all ingredients except blueberries just until moistened. Gently stir in blueberries. Divide batter evenly among cups."
muffins.steps[2] = "Mix just until dry ingredients are moistened. Overmixing causes tunnels and a tougher texture in the muffins."  
muffins.steps[3] = "Bake 15 to 25 minutes or until golden brown." 
muffins.decorations[0] = "Mix Crisco, confectioner sugar, 1/4 cupe of water and lemon extract together"
muffins.decorations[1] = "Whip to a creamy texture and get ready to decorate."
muffins.decorations[2] = "Take one hefty spoonsize of frosting and place over muffin, spreading evenly with
the back of the spoon. Don't lick that spoon, ladies!"            
muffins.decorations[3] = "Sprinkle and serve!"
puts muffins

