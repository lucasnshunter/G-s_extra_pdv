class RegistroController < ApplicationController
  def index
    @nome_da_view="Registros"
    @registros=Registro.new
  end

  def show
     @nome_da_view="Registro"
  end
end
