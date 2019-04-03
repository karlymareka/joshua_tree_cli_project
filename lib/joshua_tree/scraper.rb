require 'nokogiri' #allows program to parse HTML
require 'open-uri' #allows program to make HTTP requests

class JoshuaTree::Scraper

  def self.scrape
    doc = Nokogiri::HTML(open('https://www.nps.gov/jotr/planyourvisit/campgrounds.htm'))
    doc.css("div.ActivityListing").each do |campground|
      name = campground.css("h3.ActivityListing-title").text
      info = campground.css("p.ActivityListing-description").text
      JoshuaTree::Campground.new(name, info)
    end
  end

end
