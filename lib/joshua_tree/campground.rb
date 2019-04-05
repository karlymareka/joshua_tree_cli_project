class JoshuaTree::Campground

  @@all = []
  attr_reader :name, :info

  def initialize(name, info)
    @name = name
    @info = info
    @@all << self
  end

  def self.all
    if @@all.empty?
      JoshuaTree::Scraper.scrape
    end
    return @@all
  end

  def self.find_by_name(campground_name)
    JoshuaTree::Campground.all.find  { |campground| campground.name.strip.downcase == campground_name} 
  end

end


def my_method
  puts "pasta"
  return "grass"
  puts "hello"
  "mountain"
end
