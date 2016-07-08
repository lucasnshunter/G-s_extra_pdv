class CampanhaController < ApplicationController
  def index
    @campanhas=Campanha.new
  end

  def new
  end

  def recycle
  end
end
