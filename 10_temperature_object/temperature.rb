class Temperature
	def initialize(options)
		@options = options
	end

	def in_fahrenheit
		@options[:f] = (@options[:c] * 9/5.to_f) + 32 if @options[:c]
		@options[:f]
	end

	def in_celsius
		@options[:c] = (@options[:f] - 32) * 5/9.to_f if @options[:f]
		@options[:c]
	end

	def self.from_celsius(temperature)
		Temperature.new(c: temperature)
	end

	def self.from_fahrenheit(temperature)
		Temperature.new(f: temperature)
	end
end

class Celsius < Temperature
	def initialize(temperature)
		super({c: temperature})
	end
end

class Fahrenheit < Temperature
	def initialize(temperature)
		super({f: temperature})
	end
end