class RegistroController < ApplicationController
  def index
    @action_display_controller=6
    @nome_da_view="Registros"
    @registros=Registro.new
  end

  def show
    @action_display_controller=6
     @nome_da_view="Registro"
  end
  
  def home
    @action_display_controller=6
    @nome_da_view="home"
    
  end
end
