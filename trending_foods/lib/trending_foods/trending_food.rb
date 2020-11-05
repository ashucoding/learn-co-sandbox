class TrendingFoods::TrendingFood
 
  attr_accessor :title , :description
  
  @@all = []
 
  def initialize(title, description)
    @title = title
    @description = description
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def self.latest 
    TrendingFoods::Scraper.scrape_trending_foods
  end
  
end