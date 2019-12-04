class Ghibli
  
  @@all = []
  
  attr_accessor :title, :description, :director, :producer, :release_date, :rt_score, :people, :species, :locations
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def description
  end
  
  def director
  end
  
  def producer
  end
  
  def release_date
  end
  
  def rt_score
  end
  
  def people
  end
  
  def species
  end
  
  def locations
  end
  
end