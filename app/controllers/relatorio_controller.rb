class RelatorioController < ApplicationController
  def index
  @action_display_controller=7 
  @nome_da_view="Graficos"
  @relatorios=Relatorio.new  
  end

  def show
  @action_display_controller=7
  @nome_da_view="Grafico"
  end
  
  def home
    @action_display_controller=7
    @nome_da_view="home"
    
  end
end
