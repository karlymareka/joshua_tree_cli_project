# CLI Controller
require 'colorize'
class JoshuaTree::CLI

  def call
    welcome
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
    JoshuaTree::Campground.all.each  do |campground|
      puts campground.name.colorize(:green)
    end
  end

  def campground_info
    @chosen_campground = gets.strip.downcase
    JoshuaTree::Campground.all.each do |campground|
      if campground.name.downcase == @chosen_campground
        puts campground.info.colorize(:light_blue)
      end
    end
    choice = nil
    until choice == '1' || choice == 'exit'
      puts "Enter '1' for main menu or enter 'exit' to quit."
      choice = gets.strip.downcase
      if choice == "1"
        call
      elsif choice == "exit"
        goodbye
      end
    end
  end

  def goodbye
    puts "Have a great camping trip! Goodbye."
  end

end
