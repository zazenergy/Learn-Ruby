#Converts freezing temperature from fahrenheit to celcius
def ftoc(fahrenheit_temp)
	centigrade_temp = ((fahrenheit_temp -32) * 5/9).to_f
end

#Converts freezing temperature from celcius to fahrenheit
def ctof(centigrade_temp)
	fahrenheit_temp = ((centigrade_temp * 1.8) + 32).to_f
end

