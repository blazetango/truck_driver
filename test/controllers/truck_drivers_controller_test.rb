require 'test_helper'

class TruckDriversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_driver = truck_drivers(:one)
  end

  test "should get index" do
    get truck_drivers_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_driver_url
    assert_response :success
  end

  test "should create truck_driver" do
    assert_difference('TruckDriver.count') do
      post truck_drivers_url, params: { truck_driver: { email: @truck_driver.email, name: @truck_driver.name, pay_later: @truck_driver.pay_later, phone: @truck_driver.phone } }
    end

    assert_redirected_to truck_driver_url(TruckDriver.last)
  end

  test "should show truck_driver" do
    get truck_driver_url(@truck_driver)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_driver_url(@truck_driver)
    assert_response :success
  end

  test "should update truck_driver" do
    patch truck_driver_url(@truck_driver), params: { truck_driver: { email: @truck_driver.email, name: @truck_driver.name, pay_later: @truck_driver.pay_later, phone: @truck_driver.phone } }
    assert_redirected_to truck_driver_url(@truck_driver)
  end

  test "should destroy truck_driver" do
    assert_difference('TruckDriver.count', -1) do
      delete truck_driver_url(@truck_driver)
    end

    assert_redirected_to truck_drivers_url
  end
end
