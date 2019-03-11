class JoshuaTree::CampgroundInfo

  def self.more_info
    campground = nil
    while campground != "exit"
      puts "Enter the name of a campground for more information or
      'exit' to quit."
      campground = gets.strip.downcase
      case campground
      when "black rock"
        puts "More info on Black Rock"
      when "cottonwood"
        puts "More info on Cottonwood"
      when "indian cove"
        puts "More info on Indian Cove"
      when "jumbo rocks"
        puts "More info on Jumbo Rocks"
      when "belle"
        puts "More info on Belle"
      when "hidden valley"
        puts "More info on Hidden Valley"
      when "ryan"
        puts "More info on Ryan"
      when "white tank"
        puts "More info on White Tank"
      end
    end
  end
end
