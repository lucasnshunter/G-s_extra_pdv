class CampanhaController < ApplicationController
 
  def index
    @action_display_controller=3
    @nome_da_view="Campanhas"
    @campanhas=Campanha.new
  end

  def new
     @action_display_controller=3
     @nome_da_view="Criar campanha"
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
