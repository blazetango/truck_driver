require 'test_helper'

class SettlementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @settlement = settlements(:one)
  end

  test "should get index" do
    get settlements_url
    assert_response :success
  end

  test "should get new" do
    get new_settlement_url
    assert_response :success
  end

  test "should create settlement" do
    assert_difference('Settlement.count') do
      post settlements_url, params: { settlement: { payment_id: @settlement.payment_id, settle_amount: @settlement.settle_amount, status: @settlement.status } }
    end

    assert_redirected_to settlement_url(Settlement.last)
  end

  test "should show settlement" do
    get settlement_url(@settlement)
    assert_response :success
  end

  test "should get edit" do
    get edit_settlement_url(@settlement)
    assert_response :success
  end

  test "should update settlement" do
    patch settlement_url(@settlement), params: { settlement: { payment_id: @settlement.payment_id, settle_amount: @settlement.settle_amount, status: @settlement.status } }
    assert_redirected_to settlement_url(@settlement)
  end

  test "should destroy settlement" do
    assert_difference('Settlement.count', -1) do
      delete settlement_url(@settlement)
    end

    assert_redirected_to settlements_url
  end
end
