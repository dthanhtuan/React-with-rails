class NewsCardsController < ApplicationController
  before_action :set_news_card, only: [:show, :edit, :update, :destroy]

  # GET /news_cards
  # GET /news_cards.json
  def index
    @news_cards = NewsCard.all
  end

  # GET /news_cards/1
  # GET /news_cards/1.json
  def show
  end

  # GET /news_cards/new
  def new
    @news_card = NewsCard.new
  end

  # GET /news_cards/1/edit
  def edit
  end

  # POST /news_cards
  # POST /news_cards.json
  def create
    @news_card = NewsCard.new(news_card_params)

    respond_to do |format|
      if @news_card.save
        format.html { redirect_to @news_card, notice: 'News card was successfully created.' }
        format.json { render :show, status: :created, location: @news_card }
      else
        format.html { render :new }
        format.json { render json: @news_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_cards/1
  # PATCH/PUT /news_cards/1.json
  def update
    respond_to do |format|
      if @news_card.update(news_card_params)
        format.html { redirect_to @news_card, notice: 'News card was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_card }
      else
        format.html { render :edit }
        format.json { render json: @news_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_cards/1
  # DELETE /news_cards/1.json
  def destroy
    @news_card.destroy
    respond_to do |format|
      format.html { redirect_to news_cards_url, notice: 'News card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_card
      @news_card = NewsCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_card_params
      params.fetch(:news_card, {})
    end
end
