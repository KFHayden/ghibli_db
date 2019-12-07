class CLI

#Instantiates instances of our film objects through the API class
  def call
    API.new.fetch_films
    puts "Welcome to the wonderful world of Ghibli!"
    menu
  end
  
#Gives the user the option to view the films' titles
  def menu
    puts ""
    puts "Would you like to view films?"
    puts "Please choose 'yes' or 'no'"
    input = gets.strip
    if input.downcase == "y" || input.downcase == "yes"
      film_titles
    elsif input.downcase == "n" || input.downcase == "no" || input.downcase == "end"
      exit_program
    else
      puts "I'm sorry, I didn't get that."
      menu
    end
  end
  
#Iterates over instances of films, retrieving the index number + 1 and the corresponding title for each
  def film_titles
    Films.all.each.with_index do |film, i|
      puts "#{i+1}. #{film.title}"
    end
    film_selection
  end
  
#Gives the user the option to view more information of the selected film by entering the number that corresponds to the film's title
  def film_selection
    puts ""
    puts "Please choose the number of the film you would like to know more about."
    puts ""
    puts "If you would like to end the program, simply type 'end'."
    input = gets.strip.downcase
    if input.to_i > 0 && input.to_i < 21
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
  
#Displays the remaining extracted data of the film the user chooses
#Loops back to the menu method allowing the user to view more films
  def film_info(input)
    ghibli = Films.all[input.to_i-1]
      puts ""
      puts "Title: #{ghibli.title}"
      puts "Description: #{ghibli.description}"
      puts "Director: #{ghibli.director}"
      puts "Producer: #{ghibli.producer}"
      puts "Release Date: #{ghibli.release_date}"
      puts "Rotten Tomato SCore: #{ghibli.rt_score}"
      menu
  end
  
#Exits the program
  def exit_program
    puts "Have a nice day!"
  end
  
end