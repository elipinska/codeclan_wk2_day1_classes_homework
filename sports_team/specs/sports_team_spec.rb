require('minitest/autorun')
require_relative('../sports_team.rb')


class TestSportsTeam < Minitest::Test
  def setup
    @team = SportsTeam.new("CodeClan Devils", ["Ben", "Oscar", "Suzie"], "John")
  end

 #Create a method that adds a new player to the player's array.
  def test_add_player
    @team.add_player("Judy")
    assert_equal(4, @team.players.length)
  end

  #Add a method that takes in a string of a player's name and checks to see if they are in the players array.

  def test_player_lookup
    assert_equal(true, @team.player_lookup("Suzie"))
    assert_equal(false, @team.player_lookup("Kenneth"))
  end

  #Create a method that takes in whether the team has won or lost and updates the points property for a win.

  def test_team_win
    @team.was_the_match_a_victory(true)
    assert_equal(1, @team.points)
    @team.was_the_match_a_victory(true)
    @team.was_the_match_a_victory(true)
    @team.was_the_match_a_victory(false)
    @team.was_the_match_a_victory(true)
    assert_equal(4, @team.points)
  end

end
