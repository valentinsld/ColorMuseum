require "application_system_test_case"

class ColourPiecesTest < ApplicationSystemTestCase
  setup do
    @colour_piece = colour_pieces(:one)
  end

  test "visiting the index" do
    visit colour_pieces_url
    assert_selector "h1", text: "Colour Pieces"
  end

  test "creating a Colour piece" do
    visit colour_pieces_url
    click_on "New Colour Piece"

    fill_in "Color", with: @colour_piece.color
    fill_in "Description", with: @colour_piece.description
    fill_in "Name", with: @colour_piece.name
    fill_in "Url", with: @colour_piece.url
    click_on "Create Colour piece"

    assert_text "Colour piece was successfully created"
    click_on "Back"
  end

  test "updating a Colour piece" do
    visit colour_pieces_url
    click_on "Edit", match: :first

    fill_in "Color", with: @colour_piece.color
    fill_in "Description", with: @colour_piece.description
    fill_in "Name", with: @colour_piece.name
    fill_in "Url", with: @colour_piece.url
    click_on "Update Colour piece"

    assert_text "Colour piece was successfully updated"
    click_on "Back"
  end

  test "destroying a Colour piece" do
    visit colour_pieces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colour piece was successfully destroyed"
  end
end
