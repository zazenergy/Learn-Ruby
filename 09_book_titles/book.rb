class Book
	def initialize()
		@book
	end

	def title
		titleize(@title)
	end

	def title=(title) #setter 
		@title = title
	end

	def titleize(words)
		arrayW=[]
		arrayLittleW = %w(and but if it or over the a an in) #makes an array with words, space delimited, no quotes
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

end
