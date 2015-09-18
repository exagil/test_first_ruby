class RPNCalculator

	def initialize
		@list = []
	end

	def push(num)
		@list.push num
	end

	def plus
		raise Exception.new("calculator is empty") if @list.length == 0
		element = @list.pop + @list.pop
		@list.push element
	end

	def minus
		raise Exception.new("calculator is empty") if @list.length == 0
		last_element = @list.pop
		second_last_element = @list.pop
		@list.push (second_last_element - last_element)
	end

	def divide
		raise Exception.new("calculator is empty") if @list.length == 0
		last_element = @list.pop
		second_last_element = @list.pop
		@list.push (second_last_element / last_element.to_f)
	end

	def times
		raise Exception.new("calculator is empty") if @list.length == 0
		last_element = @list.pop
		second_last_element = @list.pop
		@list.push (second_last_element * last_element)
	end

	def value
		@list.last
	end

	def tokens string
		string.split(' ').map do |element|
			if element == '+' || element == '-' || element == '*' || element == '/'
				element.to_sym
			else
				element.to_i
			end
		end
	end
	def evaluate(input)
		tokens(input).each do |elem|
			if (elem.is_a? Integer)
				self.push(elem)
			else
				case elem
				when :+
					self.plus
				when :-
					self.minus
				when :*
					self.times
				else
					self.divide
				end
			end
		end
			self.value
	end

end