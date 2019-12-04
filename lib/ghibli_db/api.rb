class GhibliDb::API
  #retrieve data here
  def fetch
    url = "https://ghibliapi.herokuapp.com/films"
    response = HTTParty.get(url)
    response.each do |film|
      title = film["title"]
      description = film["description"]
      director = film["director"]
      producer = film["producer"]
      release_date = film["release_date"]
      rotten_tomato = film["rt_score"]
      link_for_people = film["people"]
      link_for_species = film["species"]
      link_for_locations = film["locations"]
      link_for_vehicles = film["vehicles"]
    
    binding.pry
  end
  end
  
end