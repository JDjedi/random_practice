def stock_picker(arg)
	foo = arg.each_with_object([]) { |i| i - i }
	puts foo.to_a
end

stock_picker([17,3,6,9,15,8,6,1,10])

	#arg.each do |i|
	#	puts i * i
	#end