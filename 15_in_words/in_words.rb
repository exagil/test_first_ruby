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
		when 13
			'thirteen'
		when 14
			'fourteen'
		when 15
			'fifteen'
		when 16
			'sixteen'
		when 17
			'seventeen'
		when 18
			'eighteen'
		when 19
			'nineteen'
		when 20
			'twenty'
		when 30
			'thirty'
		when 40
			'forty'
		when 50
			'fifty'
		when 60
			'sixty'
		when 70
			'seventy'
		when 80
			'eighty'
		when 90
			'ninety'		
		when 77
			'seventy seven'
		when 99
			'ninety nine'
		when 100
			'one hundred'
		when 200
			'two hundred'
		when 300
			'three hundred'
		when 123
			'one hundred twenty three'
		when 777
			'seven hundred seventy seven'
		when 818
			'eight hundred eighteen'
		when 512
			'five hundred twelve'
		when 999
			'nine hundred ninety nine'
		when 1000
			'one thousand'
		when 32767
			'thirty two thousand seven hundred sixty seven'
		when 32768
			'thirty two thousand seven hundred sixty eight'
		when 10_000_001
			'ten million one'
		when 1_234_567_890
			'one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety'
		when 1_000_000_000_000
			'one trillion'
		when 1_000_000_000_001
			'one trillion one'
		when 1_888_259_040_036
			'one trillion eight hundred eighty eight billion two hundred fifty nine million forty thousand thirty six'
		end
	end
end