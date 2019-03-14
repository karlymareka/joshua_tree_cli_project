# CLI Controller
class JoshuaTree::CLI

  def call
    type_num = welcome
    list_campgrounds
    campground_info
  end

  def welcome
    puts "Welcome! So, you are planning a camping trip to beautiful Joshua Tree National Park? Enter the name of one of the following park campgrounds for more information."
  end

  def list_campgrounds
    if JoshuaTree::Campground.all.empty?
      JoshuaTree::Scraper.scrape_menu
    end
    JoshuaTree::Campground.all.each {|campground| puts campground.name}
  end

  def campground_info
    @chosen_campground = gets.strip.downcase
    puts @chosen_campground
    JoshuaTree::Campground.all.each do |campground|
      if campground.name.downcase == @chosen_campground
        puts campground.info
      end
    end
    puts "Enter '1' for main menu or enter 'exit' to quit."
    choice = gets.strip.downcase
    if choice == "1"
      call
    elsif choice == "exit"
      goodbye
    else
      puts "I don't know what you mean."
    end
  end

  def goodbye
    puts "Have a great camping trip! Goodbye."
  end

end
