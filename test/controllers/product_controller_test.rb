require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get Laptop" do
    get product_Laptop_url
    assert_response :success
  end

  test "should get Phone" do
    get product_Phone_url
    assert_response :success
  end

  test "should get Tablet" do
    get product_Tablet_url
    assert_response :success
  end

  test "should get Sound" do
    get product_Sound_url
    assert_response :success
  end

  test "should get Accessories" do
    get product_Accessories_url
    assert_response :success
  end
end
