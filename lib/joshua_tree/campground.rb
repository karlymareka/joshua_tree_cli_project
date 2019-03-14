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
    @@all
  end


end
