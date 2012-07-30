	#defined a method called translate that takes one argument
	def translate(s)
		#split the argument and put them in a new array. Do something to each word
		s.split.map do |word|
			#Define v as the first vowel of each word
			v = first_vowel(word)
			#slice each word at the first vowel to the last character. 
			#Take the 0th character and the vowel and add ay
			word = word.slice(v..-1) + word[0,v] + "ay"
			p word
			return word
			#join them together
		end.join(" ")

	end

	def first_vowel(word)
		 #
		if word =~/^qu/
			2
		else
			word.gsub(/[aeiou].*$/, '').size
		end
	end
