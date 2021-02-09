class FornecedorsController < ApplicationController
  before_action :set_fornecedor, only: [:show, :update, :destroy]

  # GET /fornecedors
  def index
    @fornecedors = Fornecedor.all

    render json: @fornecedors
  end

  # GET /fornecedors/1
  def show
    render json: @fornecedor
  end

  # POST /fornecedors
  def create
    @fornecedor = Fornecedor.new(fornecedor_params)

    if @fornecedor.save
      render json: @fornecedor, status: :created, location: @fornecedor
    else
      render json: @fornecedor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fornecedors/1
  def update
    if @fornecedor.update(fornecedor_params)
      render json: @fornecedor
    else
      render json: @fornecedor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fornecedors/1
  def destroy
    @fornecedor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor
      @fornecedor = Fornecedor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fornecedor_params
      params.require(:fornecedor).permit(:nome, :nome_fantasia, :cnpj, :cep, :estado, :cidade, :bairro, :endereco, :numero)
    end
end
