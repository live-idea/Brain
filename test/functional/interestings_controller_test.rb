require 'test_helper'

class InterestingsControllerTest < ActionController::TestCase
  setup do
    @interesting = interestings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interestings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interesting" do
    assert_difference('Interesting.count') do
      post :create, interesting: @interesting.attributes
    end

    assert_redirected_to interesting_path(assigns(:interesting))
  end

  test "should show interesting" do
    get :show, id: @interesting.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interesting.to_param
    assert_response :success
  end

  test "should update interesting" do
    put :update, id: @interesting.to_param, interesting: @interesting.attributes
    assert_redirected_to interesting_path(assigns(:interesting))
  end

  test "should destroy interesting" do
    assert_difference('Interesting.count', -1) do
      delete :destroy, id: @interesting.to_param
    end

    assert_redirected_to interestings_path
  end
end
