def ceasar_cipher (phrase, key=0)
	
	word=""
	phrase_array=phrase.split(//)
	alphabet=("a".."z").to_a.concat(("A".."Z").to_a)

	phrase_array.each do |i|
		
		if alphabet.include(i)

			if i===(0..25)  #i am here, not finished this expresion
		word += alphabet[alphabet.index(i)+key]
		else
		word+=i
		end

	end
	
	puts word 
	

end

ceasar_cipher("heyHEY", 1)

