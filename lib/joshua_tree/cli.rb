# CLI Controller
class JoshuaTree::CLI

  def call
    type_num = welcome
    list_campgrounds
    campground_info
    goodbye
  end

  def welcome
    puts "Welcome! So, you are planning a camping trip to beautiful Joshua Tree National Park? Enter the name of one of the following park campgrounds for more information."
  end

  def list_campgrounds
    JoshuaTree::Scraper.scrape_menu
    puts JoshuaTree::Campground.all 

  end

  def campground_info
    JoshuaTree::CampgroundInfo.more_info
  end

  def goodbye
    puts "Have a great camping trip! Goodbye."
  end

end
