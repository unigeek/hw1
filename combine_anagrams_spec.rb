# combine_anagrams_spec.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
require "./combine_anagrams"
require "rspec"

describe "produces hash value for 'the'" do
  it "returns 'eht'" do
    hash_for("the").should == "eht"
  end
end

describe "produces hash value for 'now'" do
  it "returns 'now'" do
    hash_for("now").should == "now"
  end
end

describe "returns empty list when no anagram of word found in list" do
  it 'returns [] when given "nomatch" and ["now", "won", "junk"]' do
    result = find_anagrams_for("nomatch", ["now", "won", "junk"])
    result.should have(0).things
  end
end

describe "returns list of anagrams of a given word in a given list" do
  it 'returns ["now","won"] when given "now" and ["now", "won", "junk"]' do
    result = find_anagrams_for("now", ["NOW", "won", "junk"])
    result.should have(2).things
    result.should include("now")
    result.should include("won") 
  end
end

describe "returns list of anagrams of a given word in a given list" do
  it 'returns ["yam","may","aym","mya"] when given "yam" and ["yam", "won", "may", "fred", "aym", "mya"]' do
    result = find_anagrams_for("yam", ["yam", "won", "may", "fred", "aym", "mya"])
    result.should have(4).things
    result.should include("yam")
    result.should include("may") 
    result.should include("aym")
    result.should include("mya") 
  end
end

describe "combine_anagrams for list of strings with no anagrams" do
  it "returns list of 1-item lists (boring)" do
    result = combine_anagrams(["now", "is", "the", "time"])
    result.should have(4).things
    result.should include(["now"])
    result.should include(["is"])
    result.should include(["the"])
    result.should include(["time"])
  end
end

describe "combine_anagrams for list of strings with two anagrams" do
  it "returns list of anagram pair and other non-anagrams" do
    result = combine_anagrams(["now", "won", "is", "the", "time"])
    result.should have(4).things
    result.should include(["now", "won"])
    result.should include(["is"])
    result.should include(["the"])
    result.should include(["time"])
  end
end

describe "combine_anagrams for list of strings with couple differnt anagrams" do
  it "returns list of anagrams and other non-anagrams" do
    result = combine_anagrams(["now", "won", "is", "the", "si", "time", "etim", "own", "a"])
    result.should have(5).things
    result.should include(["now", "won", "own"])
    result.should include(["is","si"])
    result.should include(["the"])
    result.should include(["time","etim"])
    result.should include(["a"])
  end
end

describe "as stated" do
  it "returns " do
    result = combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'])
    result.should have(5).things
    result.should include(["cars", "racs", "scar"])
    result.should include(["for"])
    result.should include(["potatoes"])
    result.should include(["creams","scream"])
    result.should include(["four"])
  end
end


