def append(arr, n)

	if n < 0 
		puts arr.join(', ')
	else
		arr << n
		n = n - 1
		append(arr, n)
	end
end





append([], 3)

