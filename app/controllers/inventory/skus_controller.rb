class Inventory::SKUsController < ApplicationController
  before_action :set_inventory_sku, only: [:show, :edit, :update, :destroy]

  # GET /inventory/skus
  # GET /inventory/skus.json
  def index
    @inventory_skus = Inventory::SKU.all
  end

  # GET /inventory/skus/1
  # GET /inventory/skus/1.json
  def show
  end

  # GET /inventory/skus/new
  def new
    @inventory_sku = Inventory::SKU.new
  end

  # GET /inventory/skus/1/edit
  def edit
  end

  # POST /inventory/skus
  # POST /inventory/skus.json
  def create
    @inventory_sku = Inventory::SKU.new(inventory_sku_params)

    respond_to do |format|
      if @inventory_sku.save
        format.html { redirect_to @inventory_sku, notice: 'SKU was successfully created.' }
        format.json { render :show, status: :created, location: @inventory_sku }
      else
        format.html { render :new }
        format.json { render json: @inventory_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory/skus/1
  # PATCH/PUT /inventory/skus/1.json
  def update
    respond_to do |format|
      if @inventory_sku.update(inventory_sku_params)
        format.html { redirect_to @inventory_sku, notice: 'SKU was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory_sku }
      else
        format.html { render :edit }
        format.json { render json: @inventory_sku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory/skus/1
  # DELETE /inventory/skus/1.json
  def destroy
    @inventory_sku.destroy
    respond_to do |format|
      format.html { redirect_to inventory_skus_url, notice: 'SKU was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_sku
      @inventory_sku = Inventory::SKU.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_sku_params
      params.require(:inventory_sku).permit(:descriptive_id)
    end
end
