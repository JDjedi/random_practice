array = [2, 1, 3, 5, 6, 7, 1]

def bubble_sort(arg)
	sorted = true
	while sorted
		sorted = false
		(arg.length-1).times do |n|
			if arg[n] > arg[n + 1]
				arg[n], arg[n + 1] = arg[n + 1], arg[n]
				sorted = true
			end
		end
	end
	puts arg
end

bubble_sort(array)

