class PaymentSourcesController < ApplicationController
  # GET /payment_sources
  # GET /payment_sources.json
  def index
    @payment_sources = PaymentSource.paginate(:page => params[:page], per_page: 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payment_sources }
    end
  end

  # GET /payment_sources/1
  # GET /payment_sources/1.json
  def show
    @payment_source = PaymentSource.find(params[:id])
    @transactions = @payment_source.transactions
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @payment_source }
    end
  end
  
  # GET /payment_sources/new
  # GET /payment_sources/new.json
  def new
    @payment_source = PaymentSource.new
    @payment_source_types = PaymentSourceType.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payment_source }
    end
  end

  # GET /payment_sources/1/edit
  def edit
    @payment_source = PaymentSource.find(params[:id])
    @payment_source_types = PaymentSourceType.all
  end

  # POST /payment_sources
  # POST /payment_sources.json
  def create
    @payment_source = PaymentSource.new(params[:payment_source])

    respond_to do |format|
      if @payment_source.save
        format.html { redirect_to @payment_source, notice: 'Payment source was successfully created.' }
        format.json { render json: @payment_source, status: :created, location: @payment_source }
      else
        format.html { render action: "new" }
        format.json { render json: @payment_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payment_sources/1
  # PUT /payment_sources/1.json
  def update
    @payment_source = PaymentSource.find(params[:id])

    respond_to do |format|
      if @payment_source.update_attributes(params[:payment_source])
        format.html { redirect_to @payment_source, notice: 'Payment source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payment_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_sources/1
  # DELETE /payment_sources/1.json
  def destroy
    @payment_source = PaymentSource.find(params[:id])
    @payment_source.destroy

    respond_to do |format|
      format.html { redirect_to payment_sources_url }
      format.json { head :no_content }
    end
  end
end
