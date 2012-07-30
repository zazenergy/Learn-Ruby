def echo (word)
 	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, number = 2)
	tally = number
	new_word = []
	while tally >0
		new_word.push(word)
	tally -= 1
end
	return new_word.join(" ")
end

def start_of_word(word,number)
	new_word = word[0,number]
	return new_word
end

def first_word(word)
	new_word = word.split(" ").first
	return new_word
end

def titleize(words)
	arrayW=[]
	arrayLittleW = %w(and but if it or over the) #makes an array with words, space delimited, no quotes
	words.split.each do |word|
		if arrayLittleW.include? word
			arrayW << word
		else
			arrayW <<word.capitalize
		end
	end
	arrayW[0] = arrayW[0].capitalize
	arrayW.join(' ')
end
