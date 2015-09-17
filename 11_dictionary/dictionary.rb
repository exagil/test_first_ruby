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
	def add(elem)
		elem.class == Hash ? @entries.merge!(elem) : @entries.store(elem, nil)
	end

	end