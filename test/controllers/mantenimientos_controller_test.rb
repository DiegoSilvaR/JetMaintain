require "test_helper"

class MantenimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mantenimiento = mantenimientos(:one)
  end

  test "should get index" do
    get mantenimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_mantenimiento_url
    assert_response :success
  end

  test "should create mantenimiento" do
    assert_difference("Mantenimiento.count") do
      post mantenimientos_url, params: { mantenimiento: { ciudad: @mantenimiento.ciudad, fecha_mantenimiento: @mantenimiento.fecha_mantenimiento, materiales: @mantenimiento.materiales, motor_id: @mantenimiento.motor_id, tecnico_email: @mantenimiento.tecnico_email, tipo_mantenimiento: @mantenimiento.tipo_mantenimiento, tipo_motor: @mantenimiento.tipo_motor } }
    end

    assert_redirected_to mantenimiento_url(Mantenimiento.last)
  end

  test "should show mantenimiento" do
    get mantenimiento_url(@mantenimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_mantenimiento_url(@mantenimiento)
    assert_response :success
  end

  test "should update mantenimiento" do
    patch mantenimiento_url(@mantenimiento), params: { mantenimiento: { ciudad: @mantenimiento.ciudad, fecha_mantenimiento: @mantenimiento.fecha_mantenimiento, materiales: @mantenimiento.materiales, motor_id: @mantenimiento.motor_id, tecnico_email: @mantenimiento.tecnico_email, tipo_mantenimiento: @mantenimiento.tipo_mantenimiento, tipo_motor: @mantenimiento.tipo_motor } }
    assert_redirected_to mantenimiento_url(@mantenimiento)
  end

  test "should destroy mantenimiento" do
    assert_difference("Mantenimiento.count", -1) do
      delete mantenimiento_url(@mantenimiento)
    end

    assert_redirected_to mantenimientos_url
  end
end
