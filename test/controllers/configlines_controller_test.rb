require 'test_helper'

class ConfiglinesControllerTest < ActionController::TestCase
  setup do
    @configline = configlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configline" do
    assert_difference('Configline.count') do
      post :create, configline: { lineconfig: @configline.lineconfig, linenumber: @configline.linenumber, router_id: @configline.router_id }
    end

    assert_redirected_to configline_path(assigns(:configline))
  end

  test "should show configline" do
    get :show, id: @configline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configline
    assert_response :success
  end

  test "should update configline" do
    patch :update, id: @configline, configline: { lineconfig: @configline.lineconfig, linenumber: @configline.linenumber, router_id: @configline.router_id }
    assert_redirected_to configline_path(assigns(:configline))
  end

  test "should destroy configline" do
    assert_difference('Configline.count', -1) do
      delete :destroy, id: @configline
    end

    assert_redirected_to configlines_path
  end
end
