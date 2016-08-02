array_2 = ["hi", "hello", "hey", "howdy", "hznor", "a"]

def bubble_sort_by(arg)
	sorted = true
	while sorted
		sorted = false
		(arg.length-1).times do |n|
			if yield(arg[n], arg[n+1]) < 0
				arg[n], arg[n+1] = arg[n+1], arg[n]
				sorted = true
			end
		end
	end
	puts arg
end

bubble_sort_by(array_2) {|left, right| right.length - left.length}