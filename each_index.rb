def each_with_index(arg)
	yield(arg)
end

each_with_index(["Dog", "bat", 12, 15]) do |x|
	hash = Hash.new
	
	puts hash
end