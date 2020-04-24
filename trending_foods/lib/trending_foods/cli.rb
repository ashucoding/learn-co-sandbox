class TrendingFoods::CLI 
  
  def call 
   list_trending_foods
   menu 
  end
  
  def list_trending_foods
    puts "Trending Foods"
    puts "1. Regenerative Agriculture"
    puts "2. Flour Power"
end
def menu
  input = nil 
  while input != "exit"
    puts "enter the number of the trending foods you would like more information about or enter exit"
    input = gets.strip.downcase
    if input == "1"
      puts "Farmers, producers, academics, government agencies, retailers and more are taking a closer look at how to use land and animal management practices to improve soil health and sequester carbon."
    elsif input == "2" 
      puts "As seasoned and amateur bakers alike look to scratch a creative itch in the kitchen, an array of interesting flours are entering the market making baking more inclusive and adventurous."
    end 
  end
end
end