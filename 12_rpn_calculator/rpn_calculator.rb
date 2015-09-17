class RPNCalculator

	def initialize
		@list = []
	end

	def push(num)
		@list.push num
	end

	def plus
		element = @list.pop + @list.pop
		@list.push element
	end

	def minus
		last_element = @list.pop
		second_last_element = @list.pop
		@list.push (second_last_element - last_element)
	end

	def divide
		last_element = @list.pop
		second_last_element = @list.pop
		@list.push (second_last_element / last_element.to_f)
	end

	def times
		last_element = @list.pop
		second_last_element = @list.pop
		@list.push (second_last_element * last_element)
	end

	def value
		@list.last
	end

end