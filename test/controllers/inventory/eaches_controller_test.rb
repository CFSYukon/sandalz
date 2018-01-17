require 'test_helper'

class Inventory::EachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_each = inventory_eaches(:one)
  end

  test "should get index" do
    get inventory_eaches_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_each_url
    assert_response :success
  end

  test "should create inventory_each" do
    assert_difference('Inventory::Each.count') do
      post inventory_eaches_url, params: { inventory_each: {  } }
    end

    assert_redirected_to inventory_each_url(Inventory::Each.last)
  end

  test "should show inventory_each" do
    get inventory_each_url(@inventory_each)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_each_url(@inventory_each)
    assert_response :success
  end

  test "should update inventory_each" do
    patch inventory_each_url(@inventory_each), params: { inventory_each: {  } }
    assert_redirected_to inventory_each_url(@inventory_each)
  end

  test "should destroy inventory_each" do
    assert_difference('Inventory::Each.count', -1) do
      delete inventory_each_url(@inventory_each)
    end

    assert_redirected_to inventory_eaches_url
  end
end
