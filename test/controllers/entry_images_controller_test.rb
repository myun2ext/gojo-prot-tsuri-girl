require 'test_helper'

class EntryImagesControllerTest < ActionController::TestCase
  setup do
    @entry_image = entry_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entry_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry_image" do
    assert_difference('EntryImage.count') do
      post :create, entry_image: { entry_id: @entry_image.entry_id, text: @entry_image.text }
    end

    assert_redirected_to entry_image_path(assigns(:entry_image))
  end

  test "should show entry_image" do
    get :show, id: @entry_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry_image
    assert_response :success
  end

  test "should update entry_image" do
    patch :update, id: @entry_image, entry_image: { entry_id: @entry_image.entry_id, text: @entry_image.text }
    assert_redirected_to entry_image_path(assigns(:entry_image))
  end

  test "should destroy entry_image" do
    assert_difference('EntryImage.count', -1) do
      delete :destroy, id: @entry_image
    end

    assert_redirected_to entry_images_path
  end
end
