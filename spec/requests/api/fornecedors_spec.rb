# rake rswag:specs:swaggerize
require 'swagger_helper'

describe 'Fornecedors', type: :request do

  path '/fornecedors' do

    get 'Get all Fornecedor' do
      tags 'Fornecedor'
      consumes 'application/json'
      
      response '200', 'Fornecedor OK' do

        run_test!
      end

    end
  end

end