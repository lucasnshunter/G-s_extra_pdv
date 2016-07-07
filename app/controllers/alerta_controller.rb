class AlertaController < ApplicationController
  def index
    @alertas=Alerta.new
  end

  def show
  end
end
