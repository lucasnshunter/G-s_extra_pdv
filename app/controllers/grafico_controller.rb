class GraficoController < ApplicationController
  def index
     @nome_da_view="Graficos"
    @graficos=Grafico.new
  end

  def show
     @nome_da_view="Grafico"
    
  end
end
