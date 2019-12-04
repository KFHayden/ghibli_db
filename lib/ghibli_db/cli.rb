class GhibliDb::CLI
  
  def call
    puts "Hello world!"
    GhibliDb::API.new.fetch
  end
  
end