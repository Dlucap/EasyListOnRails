require 'swagger_helper'

describe 'api/produtos', type: :request do


before(:each){
    @produto = Produto.create(
      marca: "Amélia",
      nome: "macarrão",
      descricao: "massa",
      quantidade: 1,
      quantidade_estoque: 1

    )
  }

    path '/produtos' do
  
      get 'Get all Produtos' do
        tags 'Produtos' #agrupador no swagger
        consumes 'application/json'
        
        response '200', 'Produtos OK' do
  
          run_test!
        end
  
      end
    end
  
    path '/produtos/{id}' do
  
     get 'Get Produtos' do
       tags 'Produtos'
       consumes 'application/json'
  
       parameter name: 'id', :in => :path, :type => :integer, required:true
  
          response '200', 'Produto OK' do
            
            let(:id) {@produto.id}
            run_test!
          end
  
        end
    end
  
    path '/produtos/{id}' do
  
      delete 'Delete Produto' do
        tags 'Produtos'
        consumes 'application/json'
   
        parameter name: 'id', :in => :path, :type => :integer, required:true
   
        response '204', "Delete Produto OK" do
          
          let(:id) {@produto.id}
          run_test!
        end
      end
    end
  
     path '/produtos' do
  
      post 'Create Produtos' do
        tags 'Produtos'
        consumes 'application/json'
        
        parameter name: :produto, :in => :body, schema: {
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

        response '201', 'Produto OK' do
          
          let(:produto) {
          {
            "marca": "Garoto", 
            "nome": "Barra Chocolate",
            "descricao": "Chocolate ao leite",
            "preco": 4.50,
            "quatidade": 5,
            "quatidade_estoque": 10,
            "validade": DateTime.now
               
          } 
        }
          run_test!
        end
      end
    end

end
