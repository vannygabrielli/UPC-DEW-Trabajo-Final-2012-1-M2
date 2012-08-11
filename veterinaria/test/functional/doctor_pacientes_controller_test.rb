require 'test_helper'

class DoctorPacientesControllerTest < ActionController::TestCase
  setup do
    @doctor_paciente = doctor_pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_paciente" do
    assert_difference('DoctorPaciente.count') do
      post :create, doctor_paciente: @doctor_paciente.attributes
    end

    assert_redirected_to doctor_paciente_path(assigns(:doctor_paciente))
  end

  test "should show doctor_paciente" do
    get :show, id: @doctor_paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_paciente
    assert_response :success
  end

  test "should update doctor_paciente" do
    put :update, id: @doctor_paciente, doctor_paciente: @doctor_paciente.attributes
    assert_redirected_to doctor_paciente_path(assigns(:doctor_paciente))
  end

  test "should destroy doctor_paciente" do
    assert_difference('DoctorPaciente.count', -1) do
      delete :destroy, id: @doctor_paciente
    end

    assert_redirected_to doctor_pacientes_path
  end
end
