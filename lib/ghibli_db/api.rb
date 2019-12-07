class API
  
#Extracts data from the Studio Ghibli API for the Films class to call on
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
      
      Films.new(title, description, director, producer, release_date, rt_score)

    end
  end
  
end