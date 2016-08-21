@array = [55, 3, 40, 45, 23, 12, 28, 90, 7, 27]

def sort(arr)
	if arr.length != 2
		new_array = arr.each_slice(arr.length/2).to_a
		arr_a = new_array[0].sort!
		arr_b = new_array[1].sort!
		merge(arr_a, arr_b)
	end
end

def merge(arg, arg1)
	merge_array = []

	if merge_array.length < @array.length
		if arg[x] < arg1[y]
			merge_array.push(arg[x])
			merge(arr_a, arr_b)
		else
			merge_array.push(arg1[y])
			merge(arr_a, arr_b)
		end
	else
		puts "#{merge_array}"
	end
end

sort(@array)