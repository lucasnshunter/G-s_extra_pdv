class RelatorioController < ApplicationController
  def index
   @nome_da_view="Graficos"
  @relatorios=Relatorio.new  
  end

  def show
  @nome_da_view="Grafico"
  end
end
