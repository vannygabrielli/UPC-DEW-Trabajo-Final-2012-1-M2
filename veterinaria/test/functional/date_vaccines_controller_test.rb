require 'test_helper'

class DateVaccinesControllerTest < ActionController::TestCase
  setup do
    @date_vaccine = date_vaccines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:date_vaccines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create date_vaccine" do
    assert_difference('DateVaccine.count') do
      post :create, date_vaccine: @date_vaccine.attributes
    end

    assert_redirected_to date_vaccine_path(assigns(:date_vaccine))
  end

  test "should show date_vaccine" do
    get :show, id: @date_vaccine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @date_vaccine
    assert_response :success
  end

  test "should update date_vaccine" do
    put :update, id: @date_vaccine, date_vaccine: @date_vaccine.attributes
    assert_redirected_to date_vaccine_path(assigns(:date_vaccine))
  end

  test "should destroy date_vaccine" do
    assert_difference('DateVaccine.count', -1) do
      delete :destroy, id: @date_vaccine
    end

    assert_redirected_to date_vaccines_path
  end
end
