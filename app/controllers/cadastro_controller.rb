class CadastroController < ApplicationController
  def index
     @nome_da_view="Lista de usuarios cadastrados"
    @cadastros=Cadastro.new
    
  end

  def edit
     @nome_da_view="Editar usuario"
  end

  def new
     @nome_da_view="Criar usuario"
  end

  def show
     @nome_da_view="Exibindo usuario"
  end
end
