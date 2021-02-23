# rake rswag:specs:swaggerize
require 'swagger_helper'

describe 'Fornecedors', type: :request do

before(:each){
  @fornecedor = Fornecedor.create(
    nome: "José"
  )
  
}

  path '/fornecedors' do

    get 'Get all Fornecedor' do
      tags 'Fornecedor'
      consumes 'application/json'
      
      response '200', 'Fornecedor OK' do

        run_test!
      end

    end
  end

  path '/fornecedors/{id}' do

   get 'Get Fornecedor' do
     tags 'Fornecedor'
     consumes 'application/json'

     parameter name: 'id', :in => :path, :type => :integer, required:true

        response '200', 'Fornecedor OK' do
          
          let(:id) {@fornecedor.id}
          run_test!
        end

      end
  end

  path '/fornecedors/{id}' do

    delete 'Delete Fornecedor' do
      tags 'Fornecedor'
      consumes 'application/json'
 
      parameter name: 'id', :in => :path, :type => :integer, required:true
 
      response '204', "Delete Fornecedor OK" do
        
        let(:id) {@fornecedor.id}
        run_test!
      end
    end
  end

   path '/fornecedors' do

    post 'Create Fornecedor' do
      tags 'Fornecedor'
      consumes 'application/json'
 
      parameter name: :fornecedor, :in => :body, schema: {
        type: :object,
        properties:{
          nome:{
            type: :string,
            example: "supermercado"
          },
          nome_fantasia:{
            type: :string,
            example: "supermercado fantasia"
          },
          cnpj:{
            type: :string,
            example: "00.000.000/0000-00"
          },
          cep:{
            type: :string,
            example: "00.000-000"
          },
          estado:{
            type: :string,
            example: "MG"
          },
          cidade:{
            type: :string,
            example: "Belo horizonte"
          },
          bairro:{
            type: :string,
            example: "castelo"
          },
          endereco:{
            type: :string,
            example: "Rua do bobo"
          },
          numero:{
            type: :integer,
            example: 0
          }
        }
      }
 
      response '201', 'Fornecedor OK' do
        
        let(:fornecedor) {
        {
          "nome": "Super Nosso",
          "nome_fantasia": nil,
          "cnpj": nil,
          "cep": nil,
          "estado": nil,
          "cidade": nil,
          "bairro": nil,
          "endereco": nil,
          "numero": nil          
        } 
      }
        run_test!
      end
    end
  end

end