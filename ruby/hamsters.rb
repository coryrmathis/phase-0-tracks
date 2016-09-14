puts "What's the hamster's name?"
name = gets.chomp
puts "How loud is the hamster? Rate 1-10"
volume = gets.chomp
volume = volume.to_i
puts "What is it's fur color?"
color = gets.chomp
puts "Is the hamster a good candidate for adoption? Y/N?"
good = gets.chomp
if good == "Y"
	good = true
else
	good = false
end
good = good.to_s
puts "What is it's age?"
age = gets.chomp
age = age.to_i
puts "Name: #{name}"
puts "Volume: #{volume}"
puts "Color: #{color}"
puts "Good Candidate: #{good}"
puts "Estimated Age: #{age}"

