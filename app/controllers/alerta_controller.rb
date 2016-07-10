class AlertaController < ApplicationController
  def index
    @action_display_controller=1
    @nome_da_view="Lista de alertas"
    @alertas=Alerta.new
  end

  def show
    @action_display_controller=1
    @nome_da_view="Alerta"
  end
  
  def home
    @action_display_controller=1
    @nome_da_view="home"
    
  end
  
end
