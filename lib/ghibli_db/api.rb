class API
  #retrieve data here
  attr_accessor :ghibli
  
  def self.fetch_films
    url = "https://ghibliapi.herokuapp.com/films"
    response = HTTParty.get(url)
    parse = response.parsed_response
    parse.map do |parse| 
      title = parse["title"]
      description = parse["description"]
      director = parse["director"]
      producer = parse["producer"]
      release_date = parse["release_date"]
      rt_score = parse["rt_score"]
      people = parse["people"]
      species = parse["species"]
      locations = parse["locations"]
      
      Films.new(title, description, director, producer, release_date, rt_score, people, species, locations).title
    end
  end
  
end