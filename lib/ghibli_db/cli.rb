class CLI
  
  def call
    puts "Would you like to view films?"
    puts "y/n"
    input = gets.strip
    if input.downcase == "y"
      return film_titles
    else
      puts "Have a nice day!"
    end
  end
  
  def film_titles
    puts API.fetch_films
  end
  
end