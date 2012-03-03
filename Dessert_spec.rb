# Dessert_spec.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
require "./Dessert"
require "./JellyBean"
require "rspec"

describe "a banana is healthy" do
  it "is true" do
    Dessert.new("banana",100).healthy?.should be_true
  end
end

describe "a slice of cheesecake is not healthy" do
  it "is false" do
    Dessert.new("cheesecake",200).healthy?.should be_false
  end
end

describe "a slice of cheesecake is delicious" do
  it "is true" do
    Dessert.new("cheesecake",200).delicious?.should be_true
  end
end

describe "a banana is delicious" do
  it "is true" do
    Dessert.new("banana", 100).delicious?.should be_true
  end
end

describe "a cherry jelly bean is delicious" do
  it "is true" do
    JellyBean.new("ben", 75, "cherry").delicious?.should be_true
  end
end

describe "a black licorice is not delicious" do
  it "is true" do
    JellyBean.new("jerry", 75, "black licorice").delicious?.should be_false
  end
end


