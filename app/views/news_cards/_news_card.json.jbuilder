json.extract! news_card, :id, :created_at, :updated_at
json.url news_card_url(news_card, format: :json)
