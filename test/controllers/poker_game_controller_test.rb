require 'test_helper'

class PokerGameControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get poker_game_new_url
    assert_response :success
  end

  test "should get index" do
    get poker_game_index_url
    assert_response :success
  end

end
