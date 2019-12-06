class CLI

  def call
    API.new.fetch_films
    puts "Welcome to the wonderful world of Ghibli!"
    menu
  end
  
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
  
  def film_titles
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
  
  def film_info(input)
    ghibli = Films.all[input.to_i-1]
      puts "Title: #{ghibli.title}"
      puts "Description: #{ghibli.description}"
      puts "Director: #{ghibli.director}"
      puts "Producer: #{ghibli.producer}"
      puts "Release Date: #{ghibli.release_date}"
      puts "Rotten Tomato SCore: #{ghibli.rt_score}"
      menu
  end
  

  
  def exit_program
    puts "Have a nice day!"
  end
  
end