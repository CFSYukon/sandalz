class Inventory::SerialNumbersController < ApplicationController
  before_action :set_inventory_serial_number, only: [:show, :edit, :update, :destroy]

  # GET /inventory/serial_numbers
  # GET /inventory/serial_numbers.json
  def index
    @inventory_serial_numbers = Inventory::SerialNumber.all
  end

  # GET /inventory/serial_numbers/1
  # GET /inventory/serial_numbers/1.json
  def show
  end

  # GET /inventory/serial_numbers/new
  def new
    @inventory_serial_number = Inventory::SerialNumber.new
  end

  # GET /inventory/serial_numbers/1/edit
  def edit
  end

  # POST /inventory/serial_numbers
  # POST /inventory/serial_numbers.json
  def create
    @inventory_serial_number = Inventory::SerialNumber.new(inventory_serial_number_params)

    respond_to do |format|
      if @inventory_serial_number.save
        format.html { redirect_to @inventory_serial_number, notice: 'Serial number was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_serial_number }
      else
        format.html { render :new }
        format.json { render json: @inventory_serial_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory/serial_numbers/1
  # PATCH/PUT /inventory/serial_numbers/1.json
  def update
    respond_to do |format|
      if @inventory_serial_number.update(inventory_serial_number_params)
        format.html { redirect_to @inventory_serial_number, notice: 'Serial number was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_serial_number }
      else
        format.html { render :edit }
        format.json { render json: @inventory_serial_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory/serial_numbers/1
  # DELETE /inventory/serial_numbers/1.json
  def destroy
    @inventory_serial_number.destroy
    respond_to do |format|
      format.html { redirect_to inventory_serial_numbers_url, notice: 'Serial number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_serial_number
      @inventory_serial_number = Inventory::SerialNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_serial_number_params
      params.require(:inventory_serial_number).permit(:inventory_skus_id)
    end
end
