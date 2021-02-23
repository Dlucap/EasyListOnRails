require 'swagger_helper'

RSpec.describe 'compras', type: :request do

    before(:each){
        @fornecedor = Fornecedor.create(
            nome: "Nome Teste"
        )
        @compras = Compra.create(
            fornecedor: @fornecedor,    
            data_compra: DateTime.now
        )
    }

    path '/compras' do
  
      get 'Get all Compras' do
        tags 'Compras'
        consumes 'application/json'
        
        response '200', 'Compras OK' do
  
          run_test!
        end
  
      end
    end
  
    path '/compras/{id}' do
  
     get 'Get Compras' do
       tags 'Compras'
       consumes 'application/json'
  
       parameter name: 'id', :in => :path, :type => :integer, required:true
  
          response '200', 'Compras OK' do
            
            let(:id) {@compras.id}
            run_test!
        end  
      end
    end
  
    path '/compras/{id}' do
  
      delete 'Delete Compras' do
        tags 'Compras'
        consumes 'application/json'
   
        parameter name: 'id', :in => :path, :type => :integer, required:true
   
        response '204', "Delete Compras OK" do
          
          let(:id) {@compras.id}
          run_test!
        end
      end
    end
  
     path '/compras' do
  
      post 'Create Compras' do
        tags 'Compras'
        consumes 'application/json'
        
        parameter name: :compra, :in => :body, schema: {
            type: :object,
            properties:{
            fornecedor_id:{
                type: :integer,
                example: "1"
              },
            data_compra:{
                type: :datetime,
                example: DateTime.now
              }
            }
        }
       
        response '201', 'Compras OK' do
          
          let(:compra) {
          {
            "fornecedor_id": @fornecedor.id,
            "data_compra": DateTime.now
          } 
        }

          run_test!
        end
      end
    end

end
