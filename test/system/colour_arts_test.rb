require "application_system_test_case"

class ColourArtsTest < ApplicationSystemTestCase
  setup do
    @colour_art = colour_arts(:one)
  end

  test "visiting the index" do
    visit colour_arts_url
    assert_selector "h1", text: "Colour Arts"
  end

  test "creating a Colour art" do
    visit colour_arts_url
    click_on "New Colour Art"

    fill_in "Author", with: @colour_art.author
    fill_in "Color", with: @colour_art.color
    fill_in "Colorrank", with: @colour_art.colorRank
    fill_in "Description", with: @colour_art.description
    fill_in "Name", with: @colour_art.name
    fill_in "Url", with: @colour_art.url
    click_on "Create Colour art"

    assert_text "Colour art was successfully created"
    click_on "Back"
  end

  test "updating a Colour art" do
    visit colour_arts_url
    click_on "Edit", match: :first

    fill_in "Author", with: @colour_art.author
    fill_in "Color", with: @colour_art.color
    fill_in "Colorrank", with: @colour_art.colorRank
    fill_in "Description", with: @colour_art.description
    fill_in "Name", with: @colour_art.name
    fill_in "Url", with: @colour_art.url
    click_on "Update Colour art"

    assert_text "Colour art was successfully updated"
    click_on "Back"
  end

  test "destroying a Colour art" do
    visit colour_arts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colour art was successfully destroyed"
  end
end
