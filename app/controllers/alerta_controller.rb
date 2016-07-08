class AlertaController < ApplicationController
  def index
    @nome_da_view="Lista de alertas"
    @alertas=Alerta.new
  end

  def show
        @nome_da_view="Alerta"
  end
end
