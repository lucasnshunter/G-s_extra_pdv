class CadastroController < ApplicationController
    skip_before_filter :verify_authenticity_token  
  
  
  def index
    @action_display_controller=2
    @nome_da_view="Lista de usuarios cadastrados"
    
    
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
  
   def salvo
     @cadastro=Cadastro.new
     @server=Server.new
     @cadastro.usrname=params[:usrname]
     @cadastro.usrcpf=params[:usrcpf]
     @cadastro.usraddr=params[:usraddr]
     @cadastro.usradcit=params[:usradcit]
     @cadastro.usraduf=params[:usraduf]
     @cadastro.usradcep=params[:usradcep]
     @cadastro.usrphone=params[:usrphone]
     @cadastro.usrarea=params[:usrarea]
     @cadastro.usrbairro=params[:usrbairro]
     @usuario=@server.criar_cadastro_usuario @cadastro
     
     
   end
   
   
end
