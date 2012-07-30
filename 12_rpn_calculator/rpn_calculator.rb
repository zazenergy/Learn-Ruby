# rpn_calculator.rb

# Goal:
# use a Ruby Array to make it go stack
# boom!

class RPNCalculator
	
	def initialize
		@stack = []
	end

	def push(num)
		@stack << num
	end

	def stack_check
		p "in stack land"
		if @stack.size < 2
			raise "calculator is empty" 
		end
	end

	def plus
		stack_check

		num1 = @stack.pop
		num2 = @stack.pop
		value = num1 + num2
		@stack << value	
	end

	def minus
		stack_check

		num1 = @stack.pop
		num2 = @stack.pop
		value = num1 - num2
		@stack << value
	end

	def times
		stack_check

		num1 = @stack.pop
		num2 = @stack.pop
		value = num1 * num2
		@stack << value
	end

	def divide
		stack_check

		num1 = @stack.pop
		num2 = @stack.pop
		value = num1.to_f / num2.to_f
		@stack << value
	end

	def value
		if @stack.size < 1
			raise "calculator is empty"
		else
			@stack.last
		end
	end

end