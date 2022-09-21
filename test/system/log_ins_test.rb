require "application_system_test_case"

class LogInsTest < ApplicationSystemTestCase
  setup do
    @log_in = log_ins(:one)
  end

  test "visiting the index" do
    visit log_ins_url
    assert_selector "h1", text: "Log ins"
  end

  test "should create log in" do
    visit log_ins_url
    click_on "New log in"

    fill_in "City", with: @log_in.city
    fill_in "Order", with: @log_in.order
    fill_in "State", with: @log_in.state
    fill_in "User", with: @log_in.user
    click_on "Create Log in"

    assert_text "Log in was successfully created"
    click_on "Back"
  end

  test "should update Log in" do
    visit log_in_url(@log_in)
    click_on "Edit this log in", match: :first

    fill_in "City", with: @log_in.city
    fill_in "Order", with: @log_in.order
    fill_in "State", with: @log_in.state
    fill_in "User", with: @log_in.user
    click_on "Update Log in"

    assert_text "Log in was successfully updated"
    click_on "Back"
  end

  test "should destroy Log in" do
    visit log_in_url(@log_in)
    click_on "Destroy this log in", match: :first

    assert_text "Log in was successfully destroyed"
  end
end
