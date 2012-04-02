require 'test_helper'

class FotkiesControllerTest < ActionController::TestCase
  setup do
    @fotky = fotkies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotkies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotky" do
    assert_difference('Fotky.count') do
      post :create, fotky: @fotky.attributes
    end

    assert_redirected_to fotky_path(assigns(:fotky))
  end

  test "should show fotky" do
    get :show, id: @fotky
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotky
    assert_response :success
  end

  test "should update fotky" do
    put :update, id: @fotky, fotky: @fotky.attributes
    assert_redirected_to fotky_path(assigns(:fotky))
  end

  test "should destroy fotky" do
    assert_difference('Fotky.count', -1) do
      delete :destroy, id: @fotky
    end

    assert_redirected_to fotkies_path
  end
end
