class GraficoController < ApplicationController
  def index
     @action_display_controller=4
     @nome_da_view="Graficos"
    @graficos=Grafico.new
  end

  def show
     @action_display_controller=4
     @nome_da_view="Grafico"
    
  end
  
  def home
    @action_display_controller=4
    @nome_da_view="home"
    
  end
end
