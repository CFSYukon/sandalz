require 'test_helper'

class Inventory::SerialNumbersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_serial_number = inventory_serial_numbers(:one)
  end

  test "should get index" do
    get inventory_serial_numbers_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_serial_number_url
    assert_response :success
  end

  test "should create inventory_serial_number" do
    assert_difference('Inventory::SerialNumber.count') do
      post inventory_serial_numbers_url, params: { inventory_serial_number: {  } }
    end

    assert_redirected_to inventory_serial_number_url(Inventory::SerialNumber.last)
  end

  test "should show inventory_serial_number" do
    get inventory_serial_number_url(@inventory_serial_number)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_serial_number_url(@inventory_serial_number)
    assert_response :success
  end

  test "should update inventory_serial_number" do
    patch inventory_serial_number_url(@inventory_serial_number), params: { inventory_serial_number: {  } }
    assert_redirected_to inventory_serial_number_url(@inventory_serial_number)
  end

  test "should destroy inventory_serial_number" do
    assert_difference('Inventory::SerialNumber.count', -1) do
      delete inventory_serial_number_url(@inventory_serial_number)
    end

    assert_redirected_to inventory_serial_numbers_url
  end
end
