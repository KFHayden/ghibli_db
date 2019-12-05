class API
  
  def fetch_films
    url = "https://ghibliapi.herokuapp.com/films"
    response = HTTParty.get(url)
    response.parsed_response.each do |film| 
      title = film["title"]
      description = film["description"]
      director = film["director"]
      producer = film["producer"]
      release_date = film["release_date"]
      rt_score = film["rt_score"]
      people = film["people"]
      species = film["species"]
      locations = film["locations"]
      
      Films.new(title, description, director, producer, release_date, rt_score, people, species, locations)

    end
  end
  
end