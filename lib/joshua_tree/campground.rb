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

  def self.campground_info(chosen_campground)
    @chosen_campground_info = nil
    JoshuaTree::Campground.all.each do |campground|
      if campground.name.strip.downcase == chosen_campground
        @chosen_campground_info = campground.info
      end
    end
    return @chosen_campground_info
  end

end
