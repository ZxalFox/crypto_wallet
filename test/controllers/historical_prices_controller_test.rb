# frozen_string_literal: true

require "test_helper"

class HistoricalPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historical_price = historical_prices(:one)
  end

  test "should get index" do
    get historical_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_historical_price_url
    assert_response :success
  end

  test "should create historical_price" do
    assert_difference("HistoricalPrice.count") do
      post historical_prices_url,
           params: { historical_price: { coin_id: @historical_price.coin_id, price: @historical_price.price,
                                         recorded_at: @historical_price.recorded_at } }
    end

    assert_redirected_to historical_price_url(HistoricalPrice.last)
  end

  test "should show historical_price" do
    get historical_price_url(@historical_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_historical_price_url(@historical_price)
    assert_response :success
  end

  test "should update historical_price" do
    patch historical_price_url(@historical_price),
          params: { historical_price: { coin_id: @historical_price.coin_id, price: @historical_price.price,
                                        recorded_at: @historical_price.recorded_at } }
    assert_redirected_to historical_price_url(@historical_price)
  end

  test "should destroy historical_price" do
    assert_difference("HistoricalPrice.count", -1) do
      delete historical_price_url(@historical_price)
    end

    assert_redirected_to historical_prices_url
  end
end
