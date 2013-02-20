class PaymentSourceTypesController < ApplicationController
  # GET /payment_source_types
  # GET /payment_source_types.json
  def index
    @payment_source_types = PaymentSourceType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payment_source_types }
    end
  end

  # GET /payment_source_types/1
  # GET /payment_source_types/1.json
  def show
    @payment_source_type = PaymentSourceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @payment_source_type }
    end
  end

  # GET /payment_source_types/new
  # GET /payment_source_types/new.json
  def new
    @payment_source_type = PaymentSourceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payment_source_type }
    end
  end

  # GET /payment_source_types/1/edit
  def edit
    @payment_source_type = PaymentSourceType.find(params[:id])
  end

  # POST /payment_source_types
  # POST /payment_source_types.json
  def create
    @payment_source_type = PaymentSourceType.new(params[:payment_source_type])

    respond_to do |format|
      if @payment_source_type.save
        format.html { redirect_to @payment_source_type, notice: 'Payment source type was successfully created.' }
        format.json { render json: @payment_source_type, status: :created, location: @payment_source_type }
      else
        format.html { render action: "new" }
        format.json { render json: @payment_source_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payment_source_types/1
  # PUT /payment_source_types/1.json
  def update
    @payment_source_type = PaymentSourceType.find(params[:id])

    respond_to do |format|
      if @payment_source_type.update_attributes(params[:payment_source_type])
        format.html { redirect_to @payment_source_type, notice: 'Payment source type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payment_source_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_source_types/1
  # DELETE /payment_source_types/1.json
  def destroy
    @payment_source_type = PaymentSourceType.find(params[:id])
    @payment_source_type.destroy

    respond_to do |format|
      format.html { redirect_to payment_source_types_url }
      format.json { head :no_content }
    end
  end
end
