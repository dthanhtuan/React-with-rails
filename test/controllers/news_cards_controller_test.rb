require 'test_helper'

class NewsCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_card = news_cards(:one)
  end

  test "should get index" do
    get news_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_news_card_url
    assert_response :success
  end

  test "should create news_card" do
    assert_difference('NewsCard.count') do
      post news_cards_url, params: { news_card: {  } }
    end

    assert_redirected_to news_card_url(NewsCard.last)
  end

  test "should show news_card" do
    get news_card_url(@news_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_card_url(@news_card)
    assert_response :success
  end

  test "should update news_card" do
    patch news_card_url(@news_card), params: { news_card: {  } }
    assert_redirected_to news_card_url(@news_card)
  end

  test "should destroy news_card" do
    assert_difference('NewsCard.count', -1) do
      delete news_card_url(@news_card)
    end

    assert_redirected_to news_cards_url
  end
end
