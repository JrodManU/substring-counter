def substrings(string, dictionary)
	string.split(/\w/)
	frequencies = Hash.new
	dictionary.each do |word|
		frequencies[word] = 0
		(string.length - word.length).times do |i|
			if string[i..(i + word.length - 1)] == word
				frequencies[word] += 1
			end
		end
		if frequencies[word] == 0
			frequencies.delete(word)
		end
	end
	return frequencies
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)