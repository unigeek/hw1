# Class_spec.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
require "./Class.rb"
require "rspec/core/rake_task"

class Foo
  attr_accessor_with_history :bar
end

describe "attr_accessor_with_history keeps value history" do
  it "should be nil" do
    f = Foo.new
    f.bar_history.should == nil
  end
end

describe "attr_accessor_with_history keeps value history" do
  it "should be [nil,1]" do
    f = Foo.new
    f.bar = 1
    f.bar.should == 1
    f.bar_history.should == [nil,1]
  end
end

describe "attr_accessor_with_history keeps value history" do
  it "should be [nil,1,2]" do
    f = Foo.new
    f.bar = 1
    f.bar = 2
    f.bar.should == 2
    f.bar_history.should == [nil,1,2]
  end
end

describe "attr_accessor_with_history keeps value history" do
  it "should be [nil,3]" do
    f = Foo.new
    f.bar = 1
    f.bar = 2
    f = Foo.new
    f.bar = 3
    f.bar.should == 3
    f.bar_history.should == [nil,3]
  end
end

