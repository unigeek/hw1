# combine_anagrams.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
def combine_anagrams(list)
#  hash_to_anagrams = Hash.new { |h,k| h[k] = Array.new }
#  list.each { |word| hta = hash_to_anagrams[word.split(//).sort.join]; if hta.nil? then hta = [word] else hta << word end }
#  hash_to_anagrams.keys.map { |key| hash_to_anagrams[key] }

  hash_to_anagrams = Hash.new
  list.each do |word|
    hash_to_anagrams[word.split(//).sort.join] << word
  end
  hash_to_anagrams.each {|key, value| puts "#{key} is #{value}" }

#  result = Array.new
#  hash_to_anagrams.each_value do |value|
#    result << value
#  end
#  result
end

def hash_for(word)
  word.downcase.split(//).sort.join
end

def find_anagrams_for(word, list)
  if list.empty? then
    Array.new
  else
    item = list.pop.downcase
    if hash_for(word) == hash_for(item) then
      find_anagrams_for(word, list) << item
    else
      find_anagrams_for(word, list)
    end
  end
end

