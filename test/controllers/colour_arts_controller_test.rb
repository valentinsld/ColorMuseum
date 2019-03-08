require 'test_helper'

class ColourArtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colour_art = colour_arts(:one)
  end

  test "should get index" do
    get colour_arts_url
    assert_response :success
  end

  test "should get new" do
    get new_colour_art_url
    assert_response :success
  end

  test "should create colour_art" do
    assert_difference('ColourArt.count') do
      post colour_arts_url, params: { colour_art: { author: @colour_art.author, color: @colour_art.color, colorRank: @colour_art.colorRank, description: @colour_art.description, name: @colour_art.name, url: @colour_art.url } }
    end

    assert_redirected_to colour_art_url(ColourArt.last)
  end

  test "should show colour_art" do
    get colour_art_url(@colour_art)
    assert_response :success
  end

  test "should get edit" do
    get edit_colour_art_url(@colour_art)
    assert_response :success
  end

  test "should update colour_art" do
    patch colour_art_url(@colour_art), params: { colour_art: { author: @colour_art.author, color: @colour_art.color, colorRank: @colour_art.colorRank, description: @colour_art.description, name: @colour_art.name, url: @colour_art.url } }
    assert_redirected_to colour_art_url(@colour_art)
  end

  test "should destroy colour_art" do
    assert_difference('ColourArt.count', -1) do
      delete colour_art_url(@colour_art)
    end

    assert_redirected_to colour_arts_url
  end
end
