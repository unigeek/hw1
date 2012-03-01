# palindrome_spec.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
require "./palindrome"
require "rspec/core/rake_task"

describe 'palindrome?("a")' do
  it "returns true for one-letter words" do
    palindrome?("a").should be_true
  end
end

describe /palindrome?("Madam I'm Adam")/ do
  it "returns true for common palindrome" do
    palindrome?("Madam I'm Adam").should be_true
  end
end

describe 'palindrome?("not a palindrome")' do
  it "returns false for non-palindromes" do
    palindrome?("not a palindrome").should be_false
  end
end

describe 'palindrome?("Abracadabra")' do 
  it "returns false for Abracadabra" do
    palindrome?("Abracadabra").should be_false
  end
end

describe 'palindrome?("A man, a plan, a canal -- Panama")' do 
  it "returns true for A man, a plan, a canal -- Panama" do
    palindrome?("A man, a plan, a canal -- Panama").should be_true
  end
end

