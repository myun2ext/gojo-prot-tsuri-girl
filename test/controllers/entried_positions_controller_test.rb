require 'test_helper'

class EntriedPositionsControllerTest < ActionController::TestCase
  setup do
    @entried_position = entried_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entried_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entried_position" do
    assert_difference('EntriedPosition.count') do
      post :create, entried_position: { entry_id: @entried_position.entry_id, label: @entried_position.label, latitude: @entried_position.latitude, longitude: @entried_position.longitude, owner_id: @entried_position.owner_id }
    end

    assert_redirected_to entried_position_path(assigns(:entried_position))
  end

  test "should show entried_position" do
    get :show, id: @entried_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entried_position
    assert_response :success
  end

  test "should update entried_position" do
    patch :update, id: @entried_position, entried_position: { entry_id: @entried_position.entry_id, label: @entried_position.label, latitude: @entried_position.latitude, longitude: @entried_position.longitude, owner_id: @entried_position.owner_id }
    assert_redirected_to entried_position_path(assigns(:entried_position))
  end

  test "should destroy entried_position" do
    assert_difference('EntriedPosition.count', -1) do
      delete :destroy, id: @entried_position
    end

    assert_redirected_to entried_positions_path
  end
end
