require 'test_helper'

class EscalationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escalation = escalations(:one)
  end

  test "should get index" do
    get escalations_url
    assert_response :success
  end

  test "should get new" do
    get new_escalation_url
    assert_response :success
  end

  test "should create escalation" do
    assert_difference('Escalation.count') do
      post escalations_url, params: { escalation: { expected_amount: @escalation.expected_amount, payment_id: @escalation.payment_id } }
    end

    assert_redirected_to escalation_url(Escalation.last)
  end

  test "should show escalation" do
    get escalation_url(@escalation)
    assert_response :success
  end

  test "should get edit" do
    get edit_escalation_url(@escalation)
    assert_response :success
  end

  test "should update escalation" do
    patch escalation_url(@escalation), params: { escalation: { expected_amount: @escalation.expected_amount, payment_id: @escalation.payment_id } }
    assert_redirected_to escalation_url(@escalation)
  end

  test "should destroy escalation" do
    assert_difference('Escalation.count', -1) do
      delete escalation_url(@escalation)
    end

    assert_redirected_to escalations_url
  end
end
