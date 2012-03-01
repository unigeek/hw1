# rps_tournament_winner.rb
#
# Mark Halloran
# SaaS, Spring 2010
#
require './rps_game_winner'

def rps_tournament_winner(bracket)
  if is_game?(bracket)
  then
    rps_game_winner(bracket)
  else
    rps_tournament_winner([rps_tournament_winner(bracket[0]),rps_tournament_winner(bracket[1])])
  end
end

def is_game?(pairing)
  String.try_convert(pairing[0][0]) && valid_strategy?(pairing[0]) && valid_strategy?(pairing[1])
end


