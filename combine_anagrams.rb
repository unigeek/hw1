# combine_anagrams.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
def combine_anagrams(list)
  @@hash_to_anagrams = Hash.new { |h,k| h[k] = Array.new }
  list.each { |word| @@hash_to_anagrams[hash_for(word)] << word }
  @@hash_to_anagrams.keys.map { |key| @@hash_to_anagrams[key] }
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

