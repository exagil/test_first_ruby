def add(num_1, num_2)
	num_1 + num_2
end

def subtract(num_1, num_2)
	num_1 - num_2
end

def sum array
	array.inject(0){|sum, num| sum+=num}
end

def multiply *args
	args.inject(1){ |product, number| product *= number }
end

def power(number, power)
	number ** power
end

def factorial(number)
	return 1 if number == 0
	(1..number).to_a.reduce(&:*)
end