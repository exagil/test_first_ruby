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
		@entries.merge!(elem)
	end

	end