# CLI Controller
require 'colorize'
class JoshuaTree::CLI

  def call
    welcome
    user_choices
  end

  def welcome
    puts "Welcome! So, you are planning a camping trip to beautiful Joshua Tree National Park."
  end

  def user_choices
      puts "Enter '1' to return to campground menu or 'exit' to quit."
      input = gets.strip.downcase
      case input
      when "1"
        list_campgrounds
      when "exit"
        goodbye
      else
        puts "I'm sorry; I don't understand."
        user_choices
      end
  end

  def list_campgrounds
    puts "\nEnter the name of one of the following park campgrounds for more information."
    puts ""
    JoshuaTree::Campground.all.each  do |campground|
      puts campground.name.colorize(:green)
    end
    puts ""
    list_info
  end

  def list_info
    chosen_campground = gets.strip.downcase
    puts JoshuaTree::Campground.campground_info(chosen_campground).colorize(:light_blue)
    puts ""
    user_choices
  end

  def goodbye
    puts "Have a great camping trip! Goodbye."
    exit!
  end

end
