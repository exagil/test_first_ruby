def echo args
  args.to_s
end

def shout args
	args.to_s.upcase
end

def repeat(args, number=nil)
	text = args.to_s
	number.nil? ? text << " #{text}" : text = ((text+' ') * number).strip
end

def start_of_word(word, length)
	raise Error.new('TypeError') unless word.is_a? String
	length.nil? ? word[0] : word[0..length-1]
end

def first_word(sentence)
	sentence.split(' ').first
end

def titleize word
	little_words = ['over', 'the', 'and']
	res = word.split(' ').map{|w| (little_words.include? w.downcase) ? w : w.capitalize }
	res.first.capitalize!
	res.join(' ')
end