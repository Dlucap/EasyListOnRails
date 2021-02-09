require 'test_helper'

class FornecedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fornecedor = fornecedors(:one)
  end

  test "should get index" do
    get fornecedors_url, as: :json
    assert_response :success
  end

  test "should create fornecedor" do
    assert_difference('Fornecedor.count') do
      post fornecedors_url, params: { fornecedor: { bairro: @fornecedor.bairro, cep: @fornecedor.cep, cidade: @fornecedor.cidade, cnpj: @fornecedor.cnpj, endereco: @fornecedor.endereco, estado: @fornecedor.estado, nome: @fornecedor.nome, nome_fantasia: @fornecedor.nome_fantasia, numero: @fornecedor.numero } }, as: :json
    end

    assert_response 201
  end

  test "should show fornecedor" do
    get fornecedor_url(@fornecedor), as: :json
    assert_response :success
  end

  test "should update fornecedor" do
    patch fornecedor_url(@fornecedor), params: { fornecedor: { bairro: @fornecedor.bairro, cep: @fornecedor.cep, cidade: @fornecedor.cidade, cnpj: @fornecedor.cnpj, endereco: @fornecedor.endereco, estado: @fornecedor.estado, nome: @fornecedor.nome, nome_fantasia: @fornecedor.nome_fantasia, numero: @fornecedor.numero } }, as: :json
    assert_response 200
  end

  test "should destroy fornecedor" do
    assert_difference('Fornecedor.count', -1) do
      delete fornecedor_url(@fornecedor), as: :json
    end

    assert_response 204
  end
end
