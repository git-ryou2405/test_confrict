require 'test_helper'

class SendHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @send_history = send_histories(:one)
  end

  test "should get index" do
    get send_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_send_history_url
    assert_response :success
  end

  test "should create send_history" do
    assert_difference('SendHistory.count') do
      post send_histories_url, params: { send_history: { amount: @send_history.amount, from_user_id: @send_history.from_user_id, send_type: @send_history.send_type, to_user_id: @send_history.to_user_id } }
    end

    assert_redirected_to send_history_url(SendHistory.last)
  end

  test "should show send_history" do
    get send_history_url(@send_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_send_history_url(@send_history)
    assert_response :success
  end

  test "should update send_history" do
    patch send_history_url(@send_history), params: { send_history: { amount: @send_history.amount, from_user_id: @send_history.from_user_id, send_type: @send_history.send_type, to_user_id: @send_history.to_user_id } }
    assert_redirected_to send_history_url(@send_history)
  end

  test "should destroy send_history" do
    assert_difference('SendHistory.count', -1) do
      delete send_history_url(@send_history)
    end

    assert_redirected_to send_histories_url
  end
end
