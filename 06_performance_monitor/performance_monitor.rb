def measure(number = 1, &block)
	t = Time.now
	number.times { block.call }
	(Time.now - t)/number
end