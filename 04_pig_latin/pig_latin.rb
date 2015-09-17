class String
	def begins_with_vowel?
		vowels = ['a', 'e', 'i', 'o', 'u']
		vowels.include? self[0]
	end

	def chop_first
		x = self[0]
		self[0] = ''
		x
	end

	# move_consonants_to_last
	# returns [chopped_word, consonants]
	def move_consonants_to_last
		self.last
		vowels = ['a', 'e', 'i', 'o', 'u']
		capital_flag = (self[0].upcase == self[0])
		res = self
		while ! vowels.include? res[0]
			if res.length >= 1 && (res[0] + res[1]).downcase == 'qu'
				res  << 'qu'
				res = res[2...res.length]
			else
				res  << res[0]
				res = res[1...res.length]
			end
		end
		res << 'ay'
		capital_flag ? res.capitalize! : res
	end
end

def translate(sentence)
	sentence.split(' ').map{|word| translate_word(word) }.join(' ')
end

def translate_word word
	word = word.move_consonants_to_last unless word.begins_with_vowel?
end