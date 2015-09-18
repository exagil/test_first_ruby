class Array
	def sum
		self.inject(0){|sum, num| sum += num}
	end
end