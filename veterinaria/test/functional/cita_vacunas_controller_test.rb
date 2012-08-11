require 'test_helper'

class CitaVacunasControllerTest < ActionController::TestCase
  setup do
    @cita_vacuna = cita_vacunas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cita_vacunas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cita_vacuna" do
    assert_difference('CitaVacuna.count') do
      post :create, cita_vacuna: @cita_vacuna.attributes
    end

    assert_redirected_to cita_vacuna_path(assigns(:cita_vacuna))
  end

  test "should show cita_vacuna" do
    get :show, id: @cita_vacuna
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cita_vacuna
    assert_response :success
  end

  test "should update cita_vacuna" do
    put :update, id: @cita_vacuna, cita_vacuna: @cita_vacuna.attributes
    assert_redirected_to cita_vacuna_path(assigns(:cita_vacuna))
  end

  test "should destroy cita_vacuna" do
    assert_difference('CitaVacuna.count', -1) do
      delete :destroy, id: @cita_vacuna
    end

    assert_redirected_to cita_vacunas_path
  end
end
