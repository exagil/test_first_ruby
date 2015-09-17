class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0	
	end

	def time_string
		seconds = @seconds
		hours = (seconds/3600)
		seconds -= (hours*3600)
		minutes = (seconds/60)
		seconds -= (minutes*60)
		hours.to_s.rjust(2, '0') + ':' + minutes.to_s.rjust(2, '0') + ':' + seconds.to_s.rjust(2, '0')
	end
end

# t = Timer.new
# t.seconds = 40000
# puts t.time_string