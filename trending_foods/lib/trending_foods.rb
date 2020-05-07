require "nokogiri"
require "byebug"
require "open-uri"

require_relative "./trending_foods/version"
require_relative "./trending_foods/cli"
require_relative "./trending_foods/trending_food"
require_relative "./trending_foods/scraper"
module TrendingFoods
  class Error < StandardError; end
  # Your code goes here...
end
