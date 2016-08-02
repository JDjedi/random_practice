module Enumerable

	def my_each
		for i in self
			puts i
		end
	end

	def each_with_index
		for i in self.length
			puts i
		end
	end





end

#[1, 2, 3].my_each
[1, 2, 3].each_with_index