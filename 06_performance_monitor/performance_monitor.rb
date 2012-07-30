def measure(n = 1, &block)
	total_time = 0
	n.times do 
		time_began = Time.now
		block.call
		time_ended = Time.now
		total_time += time_ended - time_began
	end
	total_time / n
end
