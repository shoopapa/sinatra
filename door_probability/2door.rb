require "awesome_print"
choice = Array.new(3, false)
door = Array.new(3, false) 
gui = Array.new(3, "closed")
door[rand(2)] = true
ap gui

print "choose a door "
input = gets.chop.to_i
choice[input] = true

result = []
n = 0
while n < 3  do
	if choice[n] | door[n]
		result << false
	else
		result << true
	end
	n += 1
end

result = result.each_with_index.map{|o,i| i if o}.compact.shuffle.first
gui[input] = "Selected"
gui[result] = "No Prize"
ap gui

print "door #{result} does not have the prize,
would you like to change your guess? " 
input = gets.chop.to_i

if input == door.index(true)
	puts "you win!"
else
	puts "you lose"
end
