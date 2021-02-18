class ItemComprasController < ApplicationController
  before_action :set_item_compra, only: [:show, :update, :destroy]

  # GET /item_compras
  def index
    @item_compras = ItemCompra.all

    render json: @item_compras
  end

  # GET /item_compras/1
  def show
    render json: @item_compra
  end

  # POST /item_compras
  def create
    @item_compra = ItemCompra.new(item_compra_params)

    if @item_compra.save
      render json: @item_compra, status: :created, location: @item_compra
    else
      render json: @item_compra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_compras/1
  def update
    if @item_compra.update(item_compra_params)
      render json: @item_compra
    else
      render json: @item_compra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_compras/1
  def destroy
    @item_compra.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_compra
      @item_compra = ItemCompra.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_compra_params
      params.require(:item_compra).permit(:compra_id, :produto_id)
    end
end
