class GhibliDb::API
  #retrieve data here
  def fetch
    url = "https://ghibliapi.herokuapp.com"
    response = HTTParty.get(url)
    response.parsed_response
    binding.pry
  end
  
end