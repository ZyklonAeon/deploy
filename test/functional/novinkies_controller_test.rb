require 'test_helper'

class NovinkiesControllerTest < ActionController::TestCase
  setup do
    @novinky = novinkies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novinkies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create novinky" do
    assert_difference('Novinky.count') do
      post :create, novinky: @novinky.attributes
    end

    assert_redirected_to novinky_path(assigns(:novinky))
  end

  test "should show novinky" do
    get :show, id: @novinky
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @novinky
    assert_response :success
  end

  test "should update novinky" do
    put :update, id: @novinky, novinky: @novinky.attributes
    assert_redirected_to novinky_path(assigns(:novinky))
  end

  test "should destroy novinky" do
    assert_difference('Novinky.count', -1) do
      delete :destroy, id: @novinky
    end

    assert_redirected_to novinkies_path
  end
end
