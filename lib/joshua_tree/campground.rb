class JoshuaTree::Campground

  @@all = []
  attr_reader :name, :url 

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end


end
