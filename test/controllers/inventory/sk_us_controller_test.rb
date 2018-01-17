require 'test_helper'

class Inventory::SkUsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_sku = inventory_skus(:one)
  end

  test "should get index" do
    get inventory_skus_url
    assert_response :success
  end

  test "should get new" do
    get new_inventory_sku_url
    assert_response :success
  end

  test "should create inventory_sku" do
    assert_difference('Inventory::Sku.count') do
      post inventory_skus_url, params: { inventory_sku: {  } }
    end

    assert_redirected_to inventory_sku_url(Inventory::Sku.last)
  end

  test "should show inventory_sku" do
    get inventory_sku_url(@inventory_sku)
    assert_response :success
  end

  test "should get edit" do
    get edit_inventory_sku_url(@inventory_sku)
    assert_response :success
  end

  test "should update inventory_sku" do
    patch inventory_sku_url(@inventory_sku), params: { inventory_sku: {  } }
    assert_redirected_to inventory_sku_url(@inventory_sku)
  end

  test "should destroy inventory_sku" do
    assert_difference('Inventory::Sku.count', -1) do
      delete inventory_sku_url(@inventory_sku)
    end

    assert_redirected_to inventory_skus_url
  end
end
