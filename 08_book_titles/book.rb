class Book
	
	def title
		not_to_capitalize = ['a', 'an', 'the', 'and', 'in', 'of']
		@title = @title.split(' ').map do |word|
			(not_to_capitalize.include? word.downcase) ? word.downcase : word.capitalize 
		end.join(' ')
		@title[0] = @title[0].upcase
		@title
	end

	def title=title
		@title = title
	end

end