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
		element
	end

	def value
		@list.last
	end

end