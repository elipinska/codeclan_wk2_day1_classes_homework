class SportsTeam
  attr_accessor :coach
  attr_reader :team_name, :players, :points

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def add_player(new_player_name)
    @players << new_player_name
  end

  def player_lookup(name_to_find)
    @players.include?(name_to_find)
  end

  def was_the_match_a_victory(result)
    @points += 1 if result == true
  end

end
