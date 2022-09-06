require "application_system_test_case"

class EscalationsTest < ApplicationSystemTestCase
  setup do
    @escalation = escalations(:one)
  end

  test "visiting the index" do
    visit escalations_url
    assert_selector "h1", text: "Escalations"
  end

  test "creating a Escalation" do
    visit escalations_url
    click_on "New Escalation"

    fill_in "Expected amount", with: @escalation.expected_amount
    fill_in "Payment", with: @escalation.payment_id
    click_on "Create Escalation"

    assert_text "Escalation was successfully created"
    click_on "Back"
  end

  test "updating a Escalation" do
    visit escalations_url
    click_on "Edit", match: :first

    fill_in "Expected amount", with: @escalation.expected_amount
    fill_in "Payment", with: @escalation.payment_id
    click_on "Update Escalation"

    assert_text "Escalation was successfully updated"
    click_on "Back"
  end

  test "destroying a Escalation" do
    visit escalations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Escalation was successfully destroyed"
  end
end
