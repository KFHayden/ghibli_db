class CLI
  #todo: clean up menu & exit, create method for selecting a film to learn more about based on titles
  def call
    #call menu here
    API.new.fetch_films
    puts "Welcome to the wonderful world of Ghibli!"
    menu
    
  end
  
  def film_titles
    #iterate through movie objects here
    Films.all.each.with_index do |film, i|
      puts "#{i+1}. #{film.title}"
    end
    film_selection
  end
  
  def film_selection
    puts ""
    puts "Please choose the number of the film you would like to know more about."
    puts ""
    puts "If you would like to end the program, simply type 'end'."
    input = gets.strip.downcase
    if input.to_i > 0
      film_info(input)
      elsif input == "end"
        exit_program
      elsif input == "films"
        film_titles
      else
        puts ""
        puts "I'm sorry, I didn't get that..."
        puts "To see the list of films again, type 'films'."
        film_selection
    end
  end
  
  def film_info(input)
    #pull info from index related to title here
  end
  
  def menu
    puts "Would you like to view films?"
    puts ""
    puts "Please choose 'yes' or 'no'"
    input = gets.strip
    if input.downcase == "y" || input.downcase == "yes"
      film_titles
    elsif input.downcase == "n" || input.downcase == "no"
      exit_program
    else
      puts "I'm sorry, I didn't get that."
      menu
    end
  end
  
  def exit_program
    puts "Have a nice day!"
  end
  
end