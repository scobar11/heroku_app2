require 'test_helper'

class PicklesControllerTest < ActionController::TestCase
  setup do
    @pickle = pickles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickle" do
    assert_difference('Pickle.count') do
      post :create, pickle: { category: @pickle.category, message: @pickle.message }
    end

    assert_redirected_to pickle_path(assigns(:pickle))
  end

  test "should show pickle" do
    get :show, id: @pickle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pickle
    assert_response :success
  end

  test "should update pickle" do
    patch :update, id: @pickle, pickle: { category: @pickle.category, message: @pickle.message }
    assert_redirected_to pickle_path(assigns(:pickle))
  end

  test "should destroy pickle" do
    assert_difference('Pickle.count', -1) do
      delete :destroy, id: @pickle
    end

    assert_redirected_to pickles_path
  end
end
