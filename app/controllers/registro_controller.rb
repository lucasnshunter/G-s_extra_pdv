class RegistroController < ApplicationController
  def index
    @registros=Registro.new
  end

  def show
  end
end
