require "application_system_test_case"

class PainAmountsTest < ApplicationSystemTestCase
  setup do
    @pain_amount = pain_amounts(:one)
  end

  test "visiting the index" do
    visit pain_amounts_url
    assert_selector "h1", text: "Pain Amounts"
  end

  test "creating a Pain amount" do
    visit pain_amounts_url
    click_on "New Pain Amount"

    fill_in "Strength", with: @pain_amount.strength
    click_on "Create Pain amount"

    assert_text "Pain amount was successfully created"
    click_on "Back"
  end

  test "updating a Pain amount" do
    visit pain_amounts_url
    click_on "Edit", match: :first

    fill_in "Strength", with: @pain_amount.strength
    click_on "Update Pain amount"

    assert_text "Pain amount was successfully updated"
    click_on "Back"
  end

  test "destroying a Pain amount" do
    visit pain_amounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pain amount was successfully destroyed"
  end
end
