def ceasar_cipher (phrase, key=0)
	
	word=""
	phrase_array=phrase.split(//)
	alphabet=("a".."z").to_a.concat(("A".."Z").to_a)

	phrase_array.each do |i|
		
		y=alphabet.index(i)
		z=0
		
		if alphabet.include?(i)

			if (0..25).include?(y)&&((y+key)<26)#check for downcase
				word += alphabet[y+key]
			elsif (0..25).include?(y)&&((y+key)>25)
				z=key+y-26
				word += alphabet[z]
			elsif (26..51).include?(y)&&((y+key)<52)#check for upcase
				word +=alphabet[y+key]
			else
				z=key+y-26
				word += alphabet[z]
			end
		
		else
		word+=i
		end

		puts y
		puts z

	end
	
	puts word 
	

end

ceasar_cipher("hey HEY", 2)

