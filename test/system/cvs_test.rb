require "application_system_test_case"

class CvsTest < ApplicationSystemTestCase
  setup do
    @cv = cvs(:one)
  end

  test "visiting the index" do
    visit cvs_url
    assert_selector "h1", text: "Cvs"
  end

  test "should create cv" do
    visit cvs_url
    click_on "New cv"

    click_on "Create Cv"

    assert_text "Cv was successfully created"
    click_on "Back"
  end

  test "should update Cv" do
    visit cv_url(@cv)
    click_on "Edit this cv", match: :first

    click_on "Update Cv"

    assert_text "Cv was successfully updated"
    click_on "Back"
  end

  test "should destroy Cv" do
    visit cv_url(@cv)
    click_on "Destroy this cv", match: :first

    assert_text "Cv was successfully destroyed"
  end
end
