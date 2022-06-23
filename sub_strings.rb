def count_occurence(str, substr)
    subarr = substr.chars
    str.each_char.each_cons(substr.size).count(subarr)
end

def substrings(string, substrings) 
    string = string.downcase 
    count_hash = {}

    substrings.each do | word | 
        word = word.downcase
        if string.include?(word) 
            count_hash[word] = count_occurence(string, word)
        end
    end
    count_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
