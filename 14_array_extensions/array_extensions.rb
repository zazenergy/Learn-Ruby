class Array

	def sum
		if self.length == 0
			return 0
		else
			return self.inject(:+)
		end
	end

	def square
		if self.length == 0
			return self
		else
			return self.map {|name| name**2}
		end
	end

	def square!
		if self.length == 0
			return self
		else
			return self.map! {|name| name**2}
		end
	end

end
