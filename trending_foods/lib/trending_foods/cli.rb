class TrendingFoods::CLI 
  
  def call 
   list_trending_foods
   menu 
  end
  
  def list_trending_foods
    puts "Trending Foods"
    @trending_foods = TrendingFoods::TrendingFood.latest 
    @trending_foods.each.with_index(1) do |food,index|
      puts "#{index}. #{food.title}"
    end 
end
def menu
  input = nil 
  while input != "exit"
    puts "enter the number of the trending foods you would like more information about or enter exit"
    input = gets.strip.downcase
    if input.to_i > 0 and input.to_i <= @trending_foods.length 
      index = input.to_i - 1
      puts @trending_foods[index].description
     
    elsif input == "list"
      list_trending_foods
    end 
  end
end
end