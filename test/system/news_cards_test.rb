require "application_system_test_case"

class NewsCardsTest < ApplicationSystemTestCase
  setup do
    @news_card = news_cards(:one)
  end

  test "visiting the index" do
    visit news_cards_url
    assert_selector "h1", text: "News Cards"
  end

  test "creating a News card" do
    visit news_cards_url
    click_on "New News Card"

    click_on "Create News card"

    assert_text "News card was successfully created"
    click_on "Back"
  end

  test "updating a News card" do
    visit news_cards_url
    click_on "Edit", match: :first

    click_on "Update News card"

    assert_text "News card was successfully updated"
    click_on "Back"
  end

  test "destroying a News card" do
    visit news_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "News card was successfully destroyed"
  end
end
