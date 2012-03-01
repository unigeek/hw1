# rps_game_winner_spec.rb
#
# Mark Halloran
# SaaS, Spring 2012
#
require "./rps_game_winner"
require "rspec"

describe "no players is a problem" do
  it "throws WrongNumberOfPlayersError" do
    expect { rps_game_winner([]) }.to raise_error(WrongNumberOfPlayersError)
  end
end

describe "one player is a problem" do
  it "throws WrongNumberOfPlayersError" do
    expect { rps_game_winner(['player1']) }.to raise_error(WrongNumberOfPlayersError)
  end
end

describe "three players is a problem" do
  it "throws WrongNumberOfPlayersError" do
    expect { rps_game_winner(['player1','player2','player3']) }.to raise_error(WrongNumberOfPlayersError)
  end
end

describe "player 1 has wrong strategy" do
  it "throws NoSuchStrategyError" do
    expect { rps_game_winner([["Bob","X"],["Carol","P"]]) }.to raise_error(NoSuchStrategyError)
  end
end

describe "player 2 has wrong strategy" do
  it "throws NoSuchStrategyError" do
    expect { rps_game_winner([["Bob","S"],["Carol","X"]]) }.to raise_error(NoSuchStrategyError)
  end
end

describe "player has valid strategy" do
  it "returns true" do
    valid_strategy?(["Bob","p"]).should be_true
  end
end

describe "player has invalid strategy" do
  it "returns false" do
    valid_strategy?(["Bob","x"]).should be_false
  end
end

describe "Rock beats Scissors" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","R"],["Carol","S"]])
    winner[0].should == "Bob"
    winner[1].should == "R"
  end
end

describe "Scissors beat Paper" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","s"],["Carol","p"]])
    winner[0].should == "Bob"
    winner[1].should == "S"
  end
end

describe "Paper beats Rock" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","p"],["Carol","r"]])
    winner[0].should == "Bob"
    winner[1].should == "P"
  end
end

describe "Rock beats Scissors" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","S"],["Carol","R"]])
    winner[0].should == "Carol"
    winner[1].should == "R"
  end
end

describe "Scissors beat Paper" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","p"],["Carol","s"]])
    winner[0].should == "Carol"
    winner[1].should == "S"
  end
end

describe "Paper beats Rock" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","r"],["Carol","p"]])
    winner[0].should == "Carol"
    winner[1].should == "P"
  end
end

describe "Rock 1 beats Rock 2" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","R"],["Carol","r"]])
    winner[0].should == "Bob"
    winner[1].should == "R"
  end
end

describe "Scissors 1 beats Scissors 2" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","s"],["Carol","s"]])
    winner[0].should == "Bob"
    winner[1].should == "S"
  end
end

describe "Paper 1 beats Paper 2" do
  it "returns winning move" do
    winner = rps_game_winner([["Bob","p"],["Carol","P"]])
    winner[0].should == "Bob"
    winner[1].should == "P"
  end
end

