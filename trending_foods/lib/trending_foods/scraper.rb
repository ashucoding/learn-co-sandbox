class TrendingFoods::Scraper 
  URL= "https://www.wholefoodsmarket.com/tips-and-ideas/top-food-trends" 

  def self.scrape_trending_foods
    foods = []
    
    doc= Nokogiri::HTML(open(URL))
    food_nodes = doc.css(".w-cms-richtext")
    food_nodes.shift
    food_nodes.each do |food_node|
      food_title = food_node.css("p")[0].text.split(". ")[1]
      food_description = food_node.css("p")[1].text
      food = TrendingFoods::TrendingFood.new(food_title, food_description)
      foods << food 
    end
    #byebug
    return foods
  end
end