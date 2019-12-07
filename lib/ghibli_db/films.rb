class Films
  
#Uses extracted API data as parameters to create instances of Films
#Stores said instances of films into an empty array to be called on by CLI class
  @@all = []
  
  attr_accessor :title, :description, :director, :producer, :release_date, :rt_score
  
  def initialize(title, description, director, producer, release_date, rt_score)
    @title = title
    @description = description
    @director = director
    @producer = producer
    @release_date = release_date
    @rt_score = rt_score
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end