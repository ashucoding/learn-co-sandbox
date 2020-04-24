class TrendingFoods::TrendingFood 
  attr_accessor :title, :description 
  
  def self.latest 
    self.scrape_trending_foods
  end
  def self.scrape_trending_foods
    food1 = self.new 
    food1.title = "Regenerative Agriculture"
    food1.description = "description 1"
    food2 = self.new 
    food2.title = "Flour Power"
    food2.description = "description 2"
    return [food1, food2]
  end
end