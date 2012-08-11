require 'test_helper'

class DoctorClientesControllerTest < ActionController::TestCase
  setup do
    @doctor_cliente = doctor_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctor_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor_cliente" do
    assert_difference('DoctorCliente.count') do
      post :create, doctor_cliente: @doctor_cliente.attributes
    end

    assert_redirected_to doctor_cliente_path(assigns(:doctor_cliente))
  end

  test "should show doctor_cliente" do
    get :show, id: @doctor_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor_cliente
    assert_response :success
  end

  test "should update doctor_cliente" do
    put :update, id: @doctor_cliente, doctor_cliente: @doctor_cliente.attributes
    assert_redirected_to doctor_cliente_path(assigns(:doctor_cliente))
  end

  test "should destroy doctor_cliente" do
    assert_difference('DoctorCliente.count', -1) do
      delete :destroy, id: @doctor_cliente
    end

    assert_redirected_to doctor_clientes_path
  end
end
