require 'test_helper'

class ColourPiecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colour_piece = colour_pieces(:one)
  end

  test "should get index" do
    get colour_pieces_url
    assert_response :success
  end

  test "should get new" do
    get new_colour_piece_url
    assert_response :success
  end

  test "should create colour_piece" do
    assert_difference('ColourPiece.count') do
      post colour_pieces_url, params: { colour_piece: { color: @colour_piece.color, description: @colour_piece.description, name: @colour_piece.name, url: @colour_piece.url } }
    end

    assert_redirected_to colour_piece_url(ColourPiece.last)
  end

  test "should show colour_piece" do
    get colour_piece_url(@colour_piece)
    assert_response :success
  end

  test "should get edit" do
    get edit_colour_piece_url(@colour_piece)
    assert_response :success
  end

  test "should update colour_piece" do
    patch colour_piece_url(@colour_piece), params: { colour_piece: { color: @colour_piece.color, description: @colour_piece.description, name: @colour_piece.name, url: @colour_piece.url } }
    assert_redirected_to colour_piece_url(@colour_piece)
  end

  test "should destroy colour_piece" do
    assert_difference('ColourPiece.count', -1) do
      delete colour_piece_url(@colour_piece)
    end

    assert_redirected_to colour_pieces_url
  end
end
