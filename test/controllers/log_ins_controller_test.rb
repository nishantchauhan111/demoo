require "test_helper"

class LogInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_in = log_ins(:one)
  end

  test "should get index" do
    get log_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_log_in_url
    assert_response :success
  end

  test "should create log_in" do
    assert_difference("LogIn.count") do
      post log_ins_url, params: { log_in: { city: @log_in.city, order: @log_in.order, state: @log_in.state, user: @log_in.user } }
    end

    assert_redirected_to log_in_url(LogIn.last)
  end

  test "should show log_in" do
    get log_in_url(@log_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_in_url(@log_in)
    assert_response :success
  end

  test "should update log_in" do
    patch log_in_url(@log_in), params: { log_in: { city: @log_in.city, order: @log_in.order, state: @log_in.state, user: @log_in.user } }
    assert_redirected_to log_in_url(@log_in)
  end

  test "should destroy log_in" do
    assert_difference("LogIn.count", -1) do
      delete log_in_url(@log_in)
    end

    assert_redirected_to log_ins_url
  end
end
