# count_words_spec.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
require "./count_words"
require "rspec/core/rake_task"

describe count_words("A man, a plan, a canal -- Panama") do
  it "returns a hash of five keys/values" do
    count_words("A man, a plan, a canal -- Panama").should have(5).items
  end
end

describe count_words("A man, a plan, a canal -- Panama") do
  it "returns a value of 3 for key 'a'" do
    map = count_words("A man, a plan a canal -- Panama")
    map.should have_key("a")
    map["a"].should equal 3
  end
end

describe count_words("doo bee doo bee doo") do
  it "returns a value of 3 for key 'doo'" do
    map = count_words("doo bee doo bee doo")
    map.should have_key("doo")
    map["doo"].should equal 3
  end
end

describe count_words("doo bee doo bee doo") do
  it "returns a value of 2 for key 'bee'" do
    map = count_words("doo bee doo bee doo")
    map.should have_key("bee")
    map["bee"].should equal 2
  end
end

describe count_words("now is the time") do
  it "returns a hash of four keys/values" do
    count_words("now is the time").should have(4).items
  end
end

describe count_words("a") do
  it "returns a hash of one key/value" do
    count_words("a").should have(1).item
  end
end

