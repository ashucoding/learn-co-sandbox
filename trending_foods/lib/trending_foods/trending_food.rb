class TrendingFoods::TrendingFood
 
  attr_accessor :title, :description 
  
  def initialize(title, description)
    @title = title
    @description = description
  end
  
  def self.latest 
    TrendingFoods::Scraper.scrape_trending_foods
  end
  
end