
def reverser(&block)
	block.call.split(' ').map{ |word| word.reverse}.join(' ')
end

def adder(n=1, &block)
	block.call + n
end


def repeater(n=1,&block)
	n.times { block.call }
	end