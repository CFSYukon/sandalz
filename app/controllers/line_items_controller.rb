class LineItemsController < ApplicationController
  before_action :set_line_item, except: [:create]


  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create

    # When JSON Payload is needed, this will need to be refactored to respond to with JSON!
    
    
    @work_order = WorkOrder.find(params[:work_order_id])
    @line_item = @work_order.line_items.build(line_item_params)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @work_order, notice: 'added line item' }
        format.js
      else
        format.html { redirect_to @work_order }
        format.js { render js: "alert('#{@line_item.errors.inspect}');" }
        ## TODO: Proper error handling.
      end
    end

  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'line was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    # Need to work on this!!!!
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to line_items_url, notice: 'line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:line_item, :description, :quantity, :price_adjustment, :work_order_id, :inventory_sku_id)
    end
end 
