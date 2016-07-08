class CampanhaController < ApplicationController
  def index
     @nome_da_view="Campanhas"
    @campanhas=Campanha.new
  end

  def new
     @nome_da_view="Criar campanha"
  end

  def recycle
     @nome_da_view="Reciclar campanha"
  end
end
