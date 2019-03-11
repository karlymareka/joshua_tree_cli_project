# CLI Controller
class JoshuaTree::CLI

  def call
    type_num = welcome
    list_campgrounds(type_num)
    campground_info
    goodbye
  end

  def welcome
    puts "Welcome! So, you are planning a camping trip to beautiful
    Joshua Tree National Park. For more information about campgrounds,
    enter 1 for 'reservation-only' options and 2 for 'first-come,
    first serve' options."
    type_num = gets
  end

  def list_campgrounds(type_num)
    #scrapes the names of the campgrounds using iteration
    #@campgrounds_by_type = JoshuaTree::CampgroundNames.by_type
    type_num = type_num.to_i
    if type_num == 1
      puts JoshuaTree::CampgroundNames.reservation
      return JoshuaTree::CampgroundNames.reservation
    elsif type_num == 2
      puts JoshuaTree::CampgroundNames.fcfs
      return JoshuaTree::CampgroundNames.fcfs
    else
      puts "Invalid entry."
    end
  end

  def campground_info
    JoshuaTree::Scraper.scrape 
    JoshuaTree::CampgroundInfo.more_info
  end

  def goodbye
    puts "Have a great camping trip! Goodbye."
  end

end
