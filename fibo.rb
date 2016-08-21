def fib(n)
	return n if n < 2
	return fib(n-1) + fib(n-2)
end

(1..20).each { |n| puts fib(n) }
