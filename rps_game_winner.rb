# rps_game_winner.rb
#
# Mark Halloran
# SaaS, Spring 2010
#
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end;

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each { |move| raise NoSuchStrategyError unless valid_strategy?(move) }

  player1_move = game[0]
  player1_move[1].upcase!
  player2_move = game[1]
  player2_move[1].upcase!

  winner = player1_move
  case player1_move[1]
  when "R"
    if player2_move[1] == "P" then winner = player2_move end
  when "P"
    if player2_move[1] == "S" then winner = player2_move end
  else #S
    if player2_move[1] == "R" then winner = player2_move end
  end

  winner
end

def valid_strategy?(move)
  result = (move.length == 2)
  result = result && ['R','P','S'].include?( move[1].upcase )
end

