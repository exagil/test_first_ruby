class Dictionary
	def initialize
		@entries = {}
	end
	def entries
		@entries
	end
	def keywords
		@entries.keys.sort
	end
	def include?(elem)
		keywords.include? elem
	end

	def find(elem)
		found_elements = @entries.select{|a| a.match(elem)}
		if found_elements.length > 0
			found_elements
		else
			{}
		end
	end	

	def add(elem)
		elem.class == Hash ? @entries.merge!(elem) : @entries.store(elem, nil)
	end

	end