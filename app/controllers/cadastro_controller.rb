class CadastroController < ApplicationController
  def action_display_controller
   
     @action_display_controller=2
  end
  
  def index
    @action_display_controller=2
    @nome_da_view="Lista de usuarios cadastrados"
    @cadastros=Cadastro.new
    @action_display_controller="<h1>testando esta bagaça<h1>"
    
  end

  def edit
    @action_display_controller=2
     @nome_da_view="Editar usuario"
  end

  def new
     @action_display_controller=2
     @nome_da_view="Criar usuario"
  end

  def show
     @action_display_controller=2
     @nome_da_view="Exibindo usuario"
  end
  
   def home
    @action_display_controller=2
    @nome_da_view="home"
    
  end
end
