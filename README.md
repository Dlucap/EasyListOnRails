# README
## Comandos legais ;) 

* Comandos rake sao muito comuns no ruby e nos rails tb...
  * ```rake db:destroy```
    * Vai apagar o banco de dados, vai apagar todos!
  * ```rake db:create```
    * Vai criar um novo banco de dados
  * ```rake db:migrate```
    * "Instala" as alteracoes no banco de dados
  * ```rake db:seed```
    * executa o comando no arquivo db/seed.rb
  * ```rake db:rollback STEP=1```
    * Rollback  da migrations parametros da migration



* Comandos rails
  * ```rails console``` ou ```rails c``` 
    * abre o console para comandos rails...
    * este comando fara vc manipular os dados do db.
  * ```rails g scaffold MeuModel atributo:string atributo2:integer atributo3:decimal atributo4:date```
    * gera o model MeuModel com os respectivos campos
  * ```rails s``` sobe o servico do rails...  ```rails s -p 3001``` vai rodar o rails na porta 3001 ao inves de 3000 default
    * para testar comandos de rails.. e esta conectado no db.
  * ```irb``` para testar comandos de ruby



## Regras importantes
  * controllers so nas pastas controller
    * e com nome xxxxx_controller.rb
  * models so na pasta models
  * database.yml guarda conexao do banco
  * routes.rb guarda as rotas do sistema
  
## debug 
* byebug

## put 'ddddd ' Print um linha
## puts ' dddddd' Println um linha \n

## aumentar resolução via terminal 
* ```xrandr -s 16```
