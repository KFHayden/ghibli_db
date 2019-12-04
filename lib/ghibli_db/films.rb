class Films
  
  @@all = []
  
  attr_accessor :title, :description, :director, :producer, :release_date, :rt_score, :people, :species, :locations
  
  def initialize(title, description, director, producer, release_date, rt_score, people, species, locations)
    @title = title
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end