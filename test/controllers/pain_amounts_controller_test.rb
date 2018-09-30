require 'test_helper'

class PainAmountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pain_amount = pain_amounts(:one)
  end

  test "should get index" do
    get pain_amounts_url
    assert_response :success
  end

  test "should get new" do
    get new_pain_amount_url
    assert_response :success
  end

  test "should create pain_amount" do
    assert_difference('PainAmount.count') do
      post pain_amounts_url, params: { pain_amount: { strength: @pain_amount.strength } }
    end

    assert_redirected_to pain_amount_url(PainAmount.last)
  end

  test "should show pain_amount" do
    get pain_amount_url(@pain_amount)
    assert_response :success
  end

  test "should get edit" do
    get edit_pain_amount_url(@pain_amount)
    assert_response :success
  end

  test "should update pain_amount" do
    patch pain_amount_url(@pain_amount), params: { pain_amount: { strength: @pain_amount.strength } }
    assert_redirected_to pain_amount_url(@pain_amount)
  end

  test "should destroy pain_amount" do
    assert_difference('PainAmount.count', -1) do
      delete pain_amount_url(@pain_amount)
    end

    assert_redirected_to pain_amounts_url
  end
end
