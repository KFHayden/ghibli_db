class API
  #retrieve data here
  attr_accessor :ghibli
  
  base_uri = "https://ghibliapi.herokuapp.com"
  
  def self.fetch_films
    url = "https://ghibliapi.herokuapp.com/films"
    response = HTTParty.get(url)
    response.parsed_response.each do |film|
      title = film["title"]
      binding.pry
    end
  end
  
end