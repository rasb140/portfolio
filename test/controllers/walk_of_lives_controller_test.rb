require "test_helper"

class WalkOfLivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @walk_of_life = walk_of_lives(:one)
  end

  test "should get index" do
    get walk_of_lives_url
    assert_response :success
  end

  test "should get new" do
    get new_walk_of_life_url
    assert_response :success
  end

  test "should create walk_of_life" do
    assert_difference("WalkOfLife.count") do
      post walk_of_lives_url, params: { walk_of_life: {  } }
    end

    assert_redirected_to walk_of_life_url(WalkOfLife.last)
  end

  test "should show walk_of_life" do
    get walk_of_life_url(@walk_of_life)
    assert_response :success
  end

  test "should get edit" do
    get edit_walk_of_life_url(@walk_of_life)
    assert_response :success
  end

  test "should update walk_of_life" do
    patch walk_of_life_url(@walk_of_life), params: { walk_of_life: {  } }
    assert_redirected_to walk_of_life_url(@walk_of_life)
  end

  test "should destroy walk_of_life" do
    assert_difference("WalkOfLife.count", -1) do
      delete walk_of_life_url(@walk_of_life)
    end

    assert_redirected_to walk_of_lives_url
  end
end
