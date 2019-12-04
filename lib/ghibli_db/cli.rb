class CLI
  
  def call
    #call menu here
    puts "Would you like to view films?"
    puts "y/n"
    input = gets.strip
    if input.downcase == "y" || input.downcase == "yes"
      film_titles
    elsif input.downcase == "n" || input.downcase == "no"
      puts "Have a nice day!"
    else
      puts "I'm sorry, I didn't get that."
      call
    end
  end
  
  def film_titles
    #iterate through movie objects here
    Films.all.each.with_index do |film, i|
      
  end
  
  def menu
    #loop here
  end
  
end