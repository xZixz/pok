require 'test_helper'

class PokerGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get poker_games_new_url
    assert_response :success
  end

  test "should get index" do
    get poker_games_index_url
    assert_response :success
  end

end
