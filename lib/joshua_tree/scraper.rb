require 'nokogiri'
require 'open-uri'
#require 'pry'

class JoshuaTree::Scraper

  def self.scrape
    doc = Nokogiri::HTML(open('https://www.nps.gov/jotr/planyourvisit/campgrounds.htm'))
    doc.css("h3.ActivityListing-title").text
    doc.css("div.ActivityListing a").each do |campground|
      puts campground.css("div.ActivityListing-titleContainer h3").text
    end
    #html =
    #File.read(https://www.nps.gov/jotr/planyourvisit/campgrounds.htm)
    #webpage = Nokogiri::HTML(html)
  end


end
