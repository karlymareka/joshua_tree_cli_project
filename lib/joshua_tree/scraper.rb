require 'nokogiri'
require 'open-uri'
#require 'pry'

class JoshuaTree::Scraper

  @campgrounds = []

  def self.scrape_menu
    doc = Nokogiri::HTML(open('https://www.nps.gov/jotr/planyourvisit/campgrounds.htm'))
    doc.css("div.ActivityListing").text
    doc.css("div.ActivityListing").each do |campground|
      name = campground.css("h3.ActivityListing-title").text
      url = campground.css("a")[0]['href']
      JoshuaTree::Campground.new(name, url)
    end
  end

  def self.scrape_details(campground)
    doc = Nokogiri::HTML(open(''))
    doc.css('')
  end


end
