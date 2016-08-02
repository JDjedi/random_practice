module Enumerable

	def my_each
		for i in self
			yield(i)
		end
	end

	def my_each_with_index
		count = 0
		for i in self
			yield(count)
			count += 1
		end
		#puts self.to_a
	end

	def my_select
		arr = []
		for i in self
			arr << yield(i)
		end
		puts arr
	end

	def my_all?
		if block_given?
			if self.member? false or self.member? nil
				puts false
			else
				for i in self
					yield(i)
				end
			end

		elsif self.member? false or self.member? nil
			puts false

		else
			puts true
		end
	end

	def my_any?
		if block_given?
			
		elsif 
			
	end

end

#BELOW IS FOR TESTING PURPOSES ONLY

#["eacg", 1, 2, 10].my_each { |i| puts i}
#["eacg", 1, 2, 10].my_each_with_index { |count| puts count }
#["eacg", 1, 2, 10].my_select { |i| i * 3}
#["eacg", 1, 2, 10].my_all? { |i| puts i * 3 }
["eacg", 1, 2, 10,].my_any? { |i| puts i * 3 }











