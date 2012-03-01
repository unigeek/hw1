# rps_tournament_winner_spec.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
require "./rps_tournament_winner"
require "rspec"

describe "is a game" do
  it "returns true when RPS game is passed in" do
    is_game?([["Bob","R"],["Carol","S"]]).should be_true
  end
end

describe "is not a game" do
  it "returns false when RPS bracket is passed in" do
    is_game?([[["Bob","R"],["Carol","S"]],[["Jim","P"],["Sid","S"]]]).should be_false
  end
end

describe "play tournament" do
  it "returns winner" do
    winner = rps_tournament_winner([
                                   [
                                   [ ["Armando", "P"], ["Dave", "S"] ],
                                   [ ["Richard", "R"],  ["Michael", "S"] ],
                                   ],
                                   [ 
                                   [ ["Allen", "S"], ["Omer", "P"] ],
                                   [ ["David E.", "R"], ["Richard X.", "P"] ]
                                   ]
                                   ])
    winner[0].should == "Richard"
  end
end

