#substrings.rb
#
#Given a dictionary array and a source string containing one or more words, return a histogram showing how many times each word in the dictionary occurs as a case-insensitive substring of the source string.

def substrings(phrase, dictionary)
    histogram = Hash.new
    
    dictionary.each do |word|
        match_count = phrase.downcase.scan(word).count
        histogram[word] = match_count if match_count > 0 
    end
    
    return histogram
end