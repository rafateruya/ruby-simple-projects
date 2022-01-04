def substrings(word, dictionary)
  hash_to_return = {}
  lower_case_word = word.downcase
  dictionary.each do |term|
    occurrences = lower_case_word.scan(term).length
    hash_to_return[term] = occurrences if occurrences != 0
  end
  hash_to_return
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)