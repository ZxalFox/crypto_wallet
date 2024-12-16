class HistoricalPricesController < ApplicationController
  before_action :set_historical_price, only: %i[ show edit update destroy ]

  # GET /historical_prices or /historical_prices.json
  def index
    @historical_prices = HistoricalPrice.all
  end

  # GET /historical_prices/1 or /historical_prices/1.json
  def show
  end

  # GET /historical_prices/new
  def new
    @historical_price = HistoricalPrice.new
  end

  # GET /historical_prices/1/edit
  def edit
  end

  # POST /historical_prices or /historical_prices.json
  def create
    @historical_price = HistoricalPrice.new(historical_price_params)

    respond_to do |format|
      if @historical_price.save
        format.html { redirect_to @historical_price, notice: "Historical price was successfully created." }
        format.json { render :show, status: :created, location: @historical_price }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historical_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historical_prices/1 or /historical_prices/1.json
  def update
    respond_to do |format|
      if @historical_price.update(historical_price_params)
        format.html { redirect_to @historical_price, notice: "Historical price was successfully updated." }
        format.json { render :show, status: :ok, location: @historical_price }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historical_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historical_prices/1 or /historical_prices/1.json
  def destroy
    @historical_price.destroy!

    respond_to do |format|
      format.html { redirect_to historical_prices_path, status: :see_other, notice: "Historical price was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historical_price
      @historical_price = HistoricalPrice.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def historical_price_params
      params.expect(historical_price: [ :coin_id, :price, :recorded_at ])
    end
end
