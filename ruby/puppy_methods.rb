class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

spot = Puppy.new
spot.fetch("rope")