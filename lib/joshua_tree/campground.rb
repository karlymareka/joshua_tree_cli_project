class JoshuaTree::Campground

  @@all = []
  attr_reader :name, :url, :info

  def initialize(name, url, info)
    @name = name
    @url = url
    @info = info
    @@all << self
  end

  def self.all
    if @@all.empty?
      JoshuaTree::Scraper.scrape
    end
    @@all
  end

  def self.campground_info(chosen_campground)
    JoshuaTree::Campground.all.each do |campground|
      if campground.name.downcase == chosen_campground
        return campground.info
      end
    end
  end

end
