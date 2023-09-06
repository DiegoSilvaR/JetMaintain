require "application_system_test_case"

class MantenimientosTest < ApplicationSystemTestCase
  setup do
    @mantenimiento = mantenimientos(:one)
  end

  test "visiting the index" do
    visit mantenimientos_url
    assert_selector "h1", text: "Mantenimientos"
  end

  test "should create mantenimiento" do
    visit mantenimientos_url
    click_on "New mantenimiento"

    fill_in "Ciudad", with: @mantenimiento.ciudad
    fill_in "Fecha mantenimiento", with: @mantenimiento.fecha_mantenimiento
    fill_in "Materiales", with: @mantenimiento.materiales
    fill_in "Motor", with: @mantenimiento.motor_id
    fill_in "Tecnico email", with: @mantenimiento.tecnico_email
    fill_in "Tipo mantenimiento", with: @mantenimiento.tipo_mantenimiento
    fill_in "Tipo motor", with: @mantenimiento.tipo_motor
    click_on "Create Mantenimiento"

    assert_text "Mantenimiento was successfully created"
    click_on "Back"
  end

  test "should update Mantenimiento" do
    visit mantenimiento_url(@mantenimiento)
    click_on "Edit this mantenimiento", match: :first

    fill_in "Ciudad", with: @mantenimiento.ciudad
    fill_in "Fecha mantenimiento", with: @mantenimiento.fecha_mantenimiento
    fill_in "Materiales", with: @mantenimiento.materiales
    fill_in "Motor", with: @mantenimiento.motor_id
    fill_in "Tecnico email", with: @mantenimiento.tecnico_email
    fill_in "Tipo mantenimiento", with: @mantenimiento.tipo_mantenimiento
    fill_in "Tipo motor", with: @mantenimiento.tipo_motor
    click_on "Update Mantenimiento"

    assert_text "Mantenimiento was successfully updated"
    click_on "Back"
  end

  test "should destroy Mantenimiento" do
    visit mantenimiento_url(@mantenimiento)
    click_on "Destroy this mantenimiento", match: :first

    assert_text "Mantenimiento was successfully destroyed"
  end
end
