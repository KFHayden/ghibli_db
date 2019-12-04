class API
  #retrieve data here
  
  base_uri = "https://ghibliapi.herokuapp.com"
  
  def self.fetch_films
    url = "https://ghibliapi.herokuapp.com/films"
    response = HTTParty.get(url)
    response.parsed_response.map do |film|
      
      title = film["title"]
      description = film["description"]
      director = film["director"]

    binding.pry
    
    end
  end
  
end