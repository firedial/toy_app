require 'test_helper'

class MicoropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micoropost = micoroposts(:one)
  end

  test "should get index" do
    get micoroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_micoropost_url
    assert_response :success
  end

  test "should create micoropost" do
    assert_difference('Micoropost.count') do
      post micoroposts_url, params: { micoropost: { content: @micoropost.content, user_id: @micoropost.user_id } }
    end

    assert_redirected_to micoropost_url(Micoropost.last)
  end

  test "should show micoropost" do
    get micoropost_url(@micoropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_micoropost_url(@micoropost)
    assert_response :success
  end

  test "should update micoropost" do
    patch micoropost_url(@micoropost), params: { micoropost: { content: @micoropost.content, user_id: @micoropost.user_id } }
    assert_redirected_to micoropost_url(@micoropost)
  end

  test "should destroy micoropost" do
    assert_difference('Micoropost.count', -1) do
      delete micoropost_url(@micoropost)
    end

    assert_redirected_to micoroposts_url
  end
end
