require "awesome_print"
require "benchmark"

puts Benchmark.measure { 
win = 0 
lose = 0
lp=10000
lp.times do 
#while win + lose < 100 do

	choice = Array.new(3, false)
	door = Array.new(3, false) 
	door[rand(2)] = true

	choice[rand(2)] = true

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
	choice2 = Array.new(3, true)
 	choice2[result, choice.index(true)] = false


	if choice2.index(true)  == door.index(true)
		win += 1
	else
		lose += 1
	end
end
}
#puts "Wins: #{win} Loses: #{lose}"
#puts win.to_f/lp.to_f * 100

