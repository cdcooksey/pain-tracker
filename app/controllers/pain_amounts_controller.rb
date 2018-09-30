class PainAmountsController < ApplicationController
  before_action :set_pain_amount, only: [:show, :edit, :update, :destroy]

  # GET /pain_amounts
  # GET /pain_amounts.json
  def index
    @pain_amounts = PainAmount.all
  end

  # GET /pain_amounts/1
  # GET /pain_amounts/1.json
  def show
  end

  # GET /pain_amounts/new
  def new
    @pain_amount = PainAmount.new
  end

  # GET /pain_amounts/1/edit
  def edit
  end

  # POST /pain_amounts
  # POST /pain_amounts.json
  def create
    @pain_amount = PainAmount.new(pain_amount_params)

    respond_to do |format|
      if @pain_amount.save
        format.html { redirect_to @pain_amount, notice: 'Pain amount was successfully created.' }
        format.json { render :show, status: :created, location: @pain_amount }
      else
        format.html { render :new }
        format.json { render json: @pain_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pain_amounts/1
  # PATCH/PUT /pain_amounts/1.json
  def update
    respond_to do |format|
      if @pain_amount.update(pain_amount_params)
        format.html { redirect_to @pain_amount, notice: 'Pain amount was successfully updated.' }
        format.json { render :show, status: :ok, location: @pain_amount }
      else
        format.html { render :edit }
        format.json { render json: @pain_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pain_amounts/1
  # DELETE /pain_amounts/1.json
  def destroy
    @pain_amount.destroy
    respond_to do |format|
      format.html { redirect_to pain_amounts_url, notice: 'Pain amount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pain_amount
      @pain_amount = PainAmount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pain_amount_params
      params.require(:pain_amount).permit(:strength)
    end
end
