def reverser(&block)
	input_text = block.call
	new_array = input_text.split.map do |word|
		word.reverse
	end
	new_array.join(' ')
end

def adder(adds = 1, &block)
	block.call + adds
end

def repeater(n = 1, &block)
	n.times do 
	block.call
	end
end
