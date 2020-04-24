class TrendingFoods::TrendingFood
  URL= "https://www.wholefoodsmarket.com/tips-and-ideas/top-food-trends"
  attr_accessor :title, :description 
  
  def self.latest 
    self.scrape_trending_foods
  end
  def self.scrape_trending_foods
    foods = []
    
    doc= Nokogiri::HTML(open(URL))
    food_nodes = doc.css(".w-cms-richtext")
    food_nodes.shift
    food_nodes.each do |food_node|
      food = self.new 
      food.title = food_node.css("p")[0].text.split(". ")[1]
      food.description = food_node.css("p")[1].text
      foods << food 
    end
    #byebug
    return foods
  end
end