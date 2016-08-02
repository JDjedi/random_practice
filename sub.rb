dict = ["below","down","go","going","horn","how","howdy","it","low",
		"own","part","partner","sit"]

def lookup(arg, arg2)

	num = 0
	hash = {}

	arg2.each do |a|
		foo = arg.scan(a).length
		if foo > 0
			foo2 = arg.scan(a)
			hash[foo2] = foo
		end
	end
	puts hash
end

lookup("howdy going sit partner", dict)


