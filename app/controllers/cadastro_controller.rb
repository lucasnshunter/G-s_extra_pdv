class CadastroController < ApplicationController
    skip_before_filter :verify_authenticity_token  
  
  
  def index
    @action_display_controller=2
    @nome_da_view="Lista de usuarios cadastrados"
    @server=Server.new
    @cadastrados=Cadastro.new
    @cadastrados=@cadastrados.listar_usuarios_cadastrados @cadastrados
      
    
    
  end
  
  def delete
    @action_display_controller=2
    @nome_da_view="deletar usuario"
    @cadastro=Cadastro.new
    usr_id=params[:id]
    @tela = @cadastro.solicitar_remocao_cadastro_usuario usr_id
    redirect_to cadastro_index_path, notice: 'Cadastro apagado btf?'
      
  end

  def edit
    @action_display_controller=2
    @nome_da_view="Editar usuario"
    @cadastro=Cadastro.new
    usr_id=params[:id]
    @tela=@cadastro.solicitar_dados_usuario usr_id
     @cadastro.usrname=params[:usrname]
     @cadastro.usrcpf=params[:usrcpf]
     @cadastro.usraddr=params[:usraddr]
     @cadastro.usradcit=params[:usradcit]
     @cadastro.usraduf=params[:usraduf]
     @cadastro.usradcep=params[:usradcep]
     @cadastro.usrphone=params[:usrphone]
     @cadastro.usrarea=params[:usrarea]
     @cadastro.usrbairro=params[:usrbairro]
     @cadastro.solicitar_atualizacao_cadastro_usuario @cadastro
    
  end

  def new
     @action_display_controller=2
     @nome_da_view="Criar usuario"
     @cadastro=Cadastro.new
     @cadastro.usrname=params[:usrname]
     @cadastro.usrcpf=params[:usrcpf]
     @cadastro.usraddr=params[:usraddr]
     @cadastro.usradcit=params[:usradcit]
     @cadastro.usraduf=params[:usraduf]
     @cadastro.usradcep=params[:usradcep]
     @cadastro.usrphone=params[:usrphone]
     @cadastro.usrarea=params[:usrarea]
     @cadastro.usrbairro=params[:usrbairro]
     @usuario=@cadastro.gerar_novo_cadastro @cadastro
    
     
  end

  def show 
     @action_display_controller=2
     @nome_da_view="Exibindo usuario"
     @cadastro=Cadastro.new
     usr_id=params[:id]
     @tela=@cadastro.solicitar_dados_usuario usr_id
     
     
     
  end
  
   def home
    @action_display_controller=2
    @nome_da_view="home"
    
   end
  
   def salvo
     @cadastro=Cadastro.new
     @server=Server.new
     @cadastro=Cadastro.new
     @cadastro.usrname=params[:usrname]
     @cadastro.usrcpf=params[:usrcpf]
     @cadastro.usraddr=params[:usraddr]
     @cadastro.usradcit=params[:usradcit]
     @cadastro.usraduf=params[:usraduf]
     @cadastro.usradcep=params[:usradcep]
     @cadastro.usrphone=params[:usrphone]
     @cadastro.usrarea=params[:usrarea]
     @cadastro.usrbairro=params[:usrbairro]
     @usuario=@cadastro.gerar_novo_cadastro @cadastro
     
     
   end
    
   
   
   
end
