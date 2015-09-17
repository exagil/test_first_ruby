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

	def add(elem)
		elem.class == Hash ? @entries.merge!(elem) : @entries.store(elem, nil)
	end

	end