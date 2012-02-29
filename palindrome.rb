# palindrome.rb
def palindrome?(string)
  arg = string.upcase.gsub(/[^A-Z]/,"")
  arg.eql?(arg.reverse)
end
