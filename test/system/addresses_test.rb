require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "should create address" do
    visit addresses_url
    click_on "New address"

    check "Active" if @address.active
    fill_in "City", with: @address.city
    fill_in "Country", with: @address.country
    fill_in "Landmark", with: @address.landmark
    fill_in "Name", with: @address.name
    fill_in "Pincode", with: @address.pincode
    fill_in "State", with: @address.state
    fill_in "Street", with: @address.street
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "should update Address" do
    visit address_url(@address)
    click_on "Edit this address", match: :first

    check "Active" if @address.active
    fill_in "City", with: @address.city
    fill_in "Country", with: @address.country
    fill_in "Landmark", with: @address.landmark
    fill_in "Name", with: @address.name
    fill_in "Pincode", with: @address.pincode
    fill_in "State", with: @address.state
    fill_in "Street", with: @address.street
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "should destroy Address" do
    visit address_url(@address)
    click_on "Destroy this address", match: :first

    assert_text "Address was successfully destroyed"
  end
end
