class CampanhaController < ApplicationController
  skip_before_filter :verify_authenticity_token
 
  def index
    @action_display_controller=3
    @nome_da_view="Campanhas"
    @campanhas=Campanha.new
  end

  def new
     @action_display_controller=3
     @nome_da_view="Criar campanha"
     @campanha=Campanha.new
     @campanha.titulo=params[:titulo]
     @campanha.data=Time.now
     @campanha.conteudo=params[:conteudo]
     @campanha.alcance=params[:alcance]
     @tela=@campanha.criar_campanha @campanha
     
  end

  def recycle
     @action_display_controller=3
     @nome_da_view="Reciclar campanha"
  end
  
  def home
     @action_display_controller=3
     @nome_da_view="home"
  end
end
