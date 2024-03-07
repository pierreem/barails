require "application_system_test_case"

class TrucsTest < ApplicationSystemTestCase
  setup do
    @truc = trucs(:one)
  end

  test "visiting the index" do
    visit trucs_url
    assert_selector "h1", text: "Trucs"
  end

  test "should create truc" do
    visit trucs_url
    click_on "New truc"

    fill_in "Name", with: @truc.name
    click_on "Create Truc"

    assert_text "Truc was successfully created"
    click_on "Back"
  end

  test "should update Truc" do
    visit truc_url(@truc)
    click_on "Edit this truc", match: :first

    fill_in "Name", with: @truc.name
    click_on "Update Truc"

    assert_text "Truc was successfully updated"
    click_on "Back"
  end

  test "should destroy Truc" do
    visit truc_url(@truc)
    click_on "Destroy this truc", match: :first

    assert_text "Truc was successfully destroyed"
  end
end
