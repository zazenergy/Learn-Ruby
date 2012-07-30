def add (num1, num2)
	addition = num1 + num2
end

def subtract (num1, num2)
	subtraction = num1 - num2
end

def sum (array)
	sum = 0
	array.each do |n| 
		sum	= sum + (n)
	end	
	return sum
end

def multiply (array)
	multiply = 1
	array.each do |n|
		multiply = multiply * (n)
	end
	return multiply
end

#which raises one number to the power of another number
def power (array)
  multiply = 1
  array.each do |n|
    multiply = (n * n) * n
 end
 return multiply
end
