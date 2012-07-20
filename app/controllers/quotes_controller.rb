class QuotesController < ApplicationController
  # GET /quotes
  # GET /quotes.json

  before_filter :authenticate_user!, :except => [:index, :show]
  def index
    if params[:user_id].present? && (@user = User.find_by_id(params[:user_id]))
      @quotes = @user.quotes.page(params[:page])
    else
      @quotes = Quote.page(params[:page])
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quotes }
    end
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    ## @quote = Quote.find(params[:id])
    @quote = Quote.find_by_id(params[:id])
    if @quote.blank?
      respond_to do |format|
        # format.html # show.html.erb
        # format.json { render json: @quote }
        format.html { redirect_to @quote, notice: 'Quote was not found.' }
      end
    else
      @user = @quote.user
    end
  end

  # GET /quotes/new
  # GET /quotes/new.json
  def new
    @quote = Quote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quote }
    end
  end

  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])

    if @quote.blank?
      format.html { redirect_to @quote, notice: 'Quote was not found.' } 
    end
  end

  # POST /quotes
  # POST /quotes.json
  def create
    ## @quote = Quote.new(params[:quote])
    
    @quote = current_user.quotes.build(params[:quote])
    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render json: @quote, status: :created, location: @quote }
      else
        format.html { render action: "new" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quotes/1
  # PUT /quotes/1.json
  def update
    ## @quote = Quote.find(params[:id])

    @quote = current_user.quotes.find_by_id(params[:id])
    respond_to do |format|
      if @quote.present?
        if @quote.update_attributes(params[:quote])
          format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @quote.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to @quote, notice: 'Quote was not found.' }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    ## @quote = Quote.find(params[:id])
    @quote = current_user.quotes.find_by_id(params[:id])

    if @quote.present?
      @quote.destroy

      respond_to do |format|
        format.html { redirect_to quotes_url }
        format.json { head :no_content }
      end
    else
      format.html { redirect_to @quote, notice: 'Quote was not found.' }
    end
  end
end
