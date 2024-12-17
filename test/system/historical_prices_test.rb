# frozen_string_literal: true

require "application_system_test_case"

class HistoricalPricesTest < ApplicationSystemTestCase
  setup do
    @historical_price = historical_prices(:one)
  end

  test "visiting the index" do
    visit historical_prices_url
    assert_selector "h1", text: "Historical prices"
  end

  test "should create historical price" do
    visit historical_prices_url
    click_on "New historical price"

    fill_in "Coin", with: @historical_price.coin_id
    fill_in "Price", with: @historical_price.price
    fill_in "Recorded at", with: @historical_price.recorded_at
    click_on "Create Historical price"

    assert_text "Historical price was successfully created"
    click_on "Back"
  end

  test "should update Historical price" do
    visit historical_price_url(@historical_price)
    click_on "Edit this historical price", match: :first

    fill_in "Coin", with: @historical_price.coin_id
    fill_in "Price", with: @historical_price.price
    fill_in "Recorded at", with: @historical_price.recorded_at.to_s
    click_on "Update Historical price"

    assert_text "Historical price was successfully updated"
    click_on "Back"
  end

  test "should destroy Historical price" do
    visit historical_price_url(@historical_price)
    click_on "Destroy this historical price", match: :first

    assert_text "Historical price was successfully destroyed"
  end
end
