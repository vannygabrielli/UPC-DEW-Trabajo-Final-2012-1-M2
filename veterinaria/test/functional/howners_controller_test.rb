require 'test_helper'

class HownersControllerTest < ActionController::TestCase
  setup do
    @howner = howners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:howners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create howner" do
    assert_difference('Howner.count') do
      post :create, howner: @howner.attributes
    end

    assert_redirected_to howner_path(assigns(:howner))
  end

  test "should show howner" do
    get :show, id: @howner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @howner
    assert_response :success
  end

  test "should update howner" do
    put :update, id: @howner, howner: @howner.attributes
    assert_redirected_to howner_path(assigns(:howner))
  end

  test "should destroy howner" do
    assert_difference('Howner.count', -1) do
      delete :destroy, id: @howner
    end

    assert_redirected_to howners_path
  end
end
