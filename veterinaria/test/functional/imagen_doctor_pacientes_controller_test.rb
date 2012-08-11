require 'test_helper'

class ImagenDoctorPacientesControllerTest < ActionController::TestCase
  setup do
    @imagen_doctor_paciente = imagen_doctor_pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagen_doctor_pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagen_doctor_paciente" do
    assert_difference('ImagenDoctorPaciente.count') do
      post :create, imagen_doctor_paciente: @imagen_doctor_paciente.attributes
    end

    assert_redirected_to imagen_doctor_paciente_path(assigns(:imagen_doctor_paciente))
  end

  test "should show imagen_doctor_paciente" do
    get :show, id: @imagen_doctor_paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagen_doctor_paciente
    assert_response :success
  end

  test "should update imagen_doctor_paciente" do
    put :update, id: @imagen_doctor_paciente, imagen_doctor_paciente: @imagen_doctor_paciente.attributes
    assert_redirected_to imagen_doctor_paciente_path(assigns(:imagen_doctor_paciente))
  end

  test "should destroy imagen_doctor_paciente" do
    assert_difference('ImagenDoctorPaciente.count', -1) do
      delete :destroy, id: @imagen_doctor_paciente
    end

    assert_redirected_to imagen_doctor_pacientes_path
  end
end
