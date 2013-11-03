require 'test_helper'

class RoversControllerTest < ActionController::TestCase
  setup do
    @rover = rovers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rovers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rover" do
    assert_difference('Rover.count') do
      post :create, rover: { landing_x_axis: @rover.landing_x_axis, landing_y_axis: @rover.landing_y_axis, target_x_axis: @rover.target_x_axis, target_y_axis: @rover.target_y_axis }
    end

    assert_redirected_to rover_path(assigns(:rover))
  end

  test "should show rover" do
    get :show, id: @rover
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rover
    assert_response :success
  end

  test "should update rover" do
    put :update, id: @rover, rover: { landing_x_axis: @rover.landing_x_axis, landing_y_axis: @rover.landing_y_axis, target_x_axis: @rover.target_x_axis, target_y_axis: @rover.target_y_axis }
    assert_redirected_to rover_path(assigns(:rover))
  end

  test "should destroy rover" do
    assert_difference('Rover.count', -1) do
      delete :destroy, id: @rover
    end

    assert_redirected_to rovers_path
  end
end
