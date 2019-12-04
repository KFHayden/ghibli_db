class CLI
  
  def call
    puts "Would you like to view films?"
    puts "y/n"
    input = gets.strip
    if input.downcase == "y" || input.downcase == "yes"
      return film_titles
    elsif input.downcase == "n" || input.downcase == "no"
      puts "Have a nice day!"
    else
      puts "I'm sorry, I didn't get that."
      call
    end
  end
  
  def film_titles
    puts API.fetch_films
  end
  
  def list_titles
  end
  
end