# count_words.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
def count_words(string)
  arg = string.downcase.gsub(/[^a-z ]/,"")
  words = arg.split(/\s+/)
  result = Hash.new
  words.each { |word| 
    if result[word].nil? then result[word] = 1 else result[word] += 1 end
  }
  result
end
