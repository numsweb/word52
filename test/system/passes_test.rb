require "application_system_test_case"

class PassesTest < ApplicationSystemTestCase
  setup do
    @pass = passes(:one)
  end

  test "visiting the index" do
    visit passes_url
    assert_selector "h1", text: "Passes"
  end

  test "creating a Pass" do
    visit passes_url
    click_on "New Pass"

    click_on "Create Pass"

    assert_text "Pass was successfully created"
    click_on "Back"
  end

  test "updating a Pass" do
    visit passes_url
    click_on "Edit", match: :first

    click_on "Update Pass"

    assert_text "Pass was successfully updated"
    click_on "Back"
  end

  test "destroying a Pass" do
    visit passes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pass was successfully destroyed"
  end
end
