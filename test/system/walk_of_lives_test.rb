require "application_system_test_case"

class WalkOfLivesTest < ApplicationSystemTestCase
  setup do
    @walk_of_life = walk_of_lives(:one)
  end

  test "visiting the index" do
    visit walk_of_lives_url
    assert_selector "h1", text: "Walk of lives"
  end

  test "should create walk of life" do
    visit walk_of_lives_url
    click_on "New walk of life"

    click_on "Create Walk of life"

    assert_text "Walk of life was successfully created"
    click_on "Back"
  end

  test "should update Walk of life" do
    visit walk_of_life_url(@walk_of_life)
    click_on "Edit this walk of life", match: :first

    click_on "Update Walk of life"

    assert_text "Walk of life was successfully updated"
    click_on "Back"
  end

  test "should destroy Walk of life" do
    visit walk_of_life_url(@walk_of_life)
    click_on "Destroy this walk of life", match: :first

    assert_text "Walk of life was successfully destroyed"
  end
end
