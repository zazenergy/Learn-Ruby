class Fixnum

	def in_words
		less_than_13={0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7=> 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen'}
		tens={20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'}
		case self 
		when 0..13
			return less_than_13[self]
		when 14, 16, 17, 19
			return teenify
		when 15
			return 'fifteen'
		when 18
			return 'eighteen'
		when 20, 30, 40, 50 , 60, 70, 80, 90
			return tens[self]
		when (20..99)
			# tens = (self / 10) * 10
			# tens = (77 / 10) * 10
			# tens = (7) * 10
			# tens = 70
			tens = (self / 10) * 10
			# ones = self - tens
			# ones = 77 - 70
			# ones = 7
			ones = self - tens
			return "#{tens.in_words} #{ones.in_words}"
		when (100..999)
			# 100
			hundreds = self / 100
			rest = self - (hundreds * 100)
			if rest > 0
				return "#{hundreds.in_words} hundred #{rest.in_words}"
			else
				return "#{hundreds.in_words} hundred"
			end
			
		end
	end
	def teenify
		return (self - 10).in_words + 'teen'
	end
end