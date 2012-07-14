require 'test_helper'

class HpatientsControllerTest < ActionController::TestCase
  setup do
    @hpatient = hpatients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hpatients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hpatient" do
    assert_difference('Hpatient.count') do
      post :create, hpatient: @hpatient.attributes
    end

    assert_redirected_to hpatient_path(assigns(:hpatient))
  end

  test "should show hpatient" do
    get :show, id: @hpatient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hpatient
    assert_response :success
  end

  test "should update hpatient" do
    put :update, id: @hpatient, hpatient: @hpatient.attributes
    assert_redirected_to hpatient_path(assigns(:hpatient))
  end

  test "should destroy hpatient" do
    assert_difference('Hpatient.count', -1) do
      delete :destroy, id: @hpatient
    end

    assert_redirected_to hpatients_path
  end
end
