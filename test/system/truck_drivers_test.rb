require "application_system_test_case"

class TruckDriversTest < ApplicationSystemTestCase
  setup do
    @truck_driver = truck_drivers(:one)
  end

  test "visiting the index" do
    visit truck_drivers_url
    assert_selector "h1", text: "Truck Drivers"
  end

  test "creating a Truck driver" do
    visit truck_drivers_url
    click_on "New Truck Driver"

    fill_in "Email", with: @truck_driver.email
    fill_in "Name", with: @truck_driver.name
    check "Pay later" if @truck_driver.pay_later
    fill_in "Phone", with: @truck_driver.phone
    click_on "Create Truck driver"

    assert_text "Truck driver was successfully created"
    click_on "Back"
  end

  test "updating a Truck driver" do
    visit truck_drivers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @truck_driver.email
    fill_in "Name", with: @truck_driver.name
    check "Pay later" if @truck_driver.pay_later
    fill_in "Phone", with: @truck_driver.phone
    click_on "Update Truck driver"

    assert_text "Truck driver was successfully updated"
    click_on "Back"
  end

  test "destroying a Truck driver" do
    visit truck_drivers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truck driver was successfully destroyed"
  end
end
