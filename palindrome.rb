# palindrome.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
def palindrome?(string)
  arg = string.upcase.gsub(/[^A-Z]/,"")
  arg.eql?(arg.reverse)
end
