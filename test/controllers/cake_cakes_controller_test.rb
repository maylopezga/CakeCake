require 'test_helper'

class CakeCakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cake_cake = cake_cakes(:one)
  end

  test "should get index" do
    get cake_cakes_url
    assert_response :success
  end

  test "should get new" do
    get new_cake_cake_url
    assert_response :success
  end

  test "should create cake_cake" do
    assert_difference('CakeCake.count') do
      post cake_cakes_url, params: { cake_cake: { ingredients: @cake_cake.ingredients, name: @cake_cake.name } }
    end

    assert_redirected_to cake_cake_url(CakeCake.last)
  end

  test "should show cake_cake" do
    get cake_cake_url(@cake_cake)
    assert_response :success
  end

  test "should get edit" do
    get edit_cake_cake_url(@cake_cake)
    assert_response :success
  end

  test "should update cake_cake" do
    patch cake_cake_url(@cake_cake), params: { cake_cake: { ingredients: @cake_cake.ingredients, name: @cake_cake.name } }
    assert_redirected_to cake_cake_url(@cake_cake)
  end

  test "should destroy cake_cake" do
    assert_difference('CakeCake.count', -1) do
      delete cake_cake_url(@cake_cake)
    end

    assert_redirected_to cake_cakes_url
  end
end
