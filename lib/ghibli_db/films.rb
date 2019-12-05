class Films
  
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