class Fixnum
	def in_words
		case self
		when 0
			'zero'
		when 1
			'one'
		when 2
			'two'
		when 3
			'three'
		when 4
			'four'
		when 5
			'five'
		when 6
			'six'
		when 7
			'seven'
		when 8
			'eight'
		when 9
			'nine'
		when 10
			'ten'
		when 11
			'eleven'
		when 12
			'twelve'
		end
	end
end