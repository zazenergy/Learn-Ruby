class Friend
	def greeting(name = nil)
		if name
			return "Hello, #{name}!"
		else
			return "Hello!"
		end
	end
end