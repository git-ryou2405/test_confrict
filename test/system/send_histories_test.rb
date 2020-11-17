require "application_system_test_case"

class SendHistoriesTest < ApplicationSystemTestCase
  setup do
    @send_history = send_histories(:one)
  end

  test "visiting the index" do
    visit send_histories_url
    assert_selector "h1", text: "Send Histories"
  end

  test "creating a Send history" do
    visit send_histories_url
    click_on "New Send History"

    fill_in "Amount", with: @send_history.amount
    fill_in "From user", with: @send_history.from_user_id
    fill_in "Send type", with: @send_history.send_type
    fill_in "To user", with: @send_history.to_user_id
    click_on "Create Send history"

    assert_text "Send history was successfully created"
    click_on "Back"
  end

  test "updating a Send history" do
    visit send_histories_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @send_history.amount
    fill_in "From user", with: @send_history.from_user_id
    fill_in "Send type", with: @send_history.send_type
    fill_in "To user", with: @send_history.to_user_id
    click_on "Update Send history"

    assert_text "Send history was successfully updated"
    click_on "Back"
  end

  test "destroying a Send history" do
    visit send_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Send history was successfully destroyed"
  end
end
