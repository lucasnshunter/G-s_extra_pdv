class PdvController < ApplicationController
  def dashboard
    @action_display_controller=5
    @pdv=Pdv.new
    @nome_da_view="Dashboard"
    
  end
  
  def sell_water
    @action_display_controller=5
    @nome_da_view="Vender Água"
  end

  def sell_gas
    @pdv=Pdv.new
    @server=Server.new
    @action_display_controller=5
    @nome_da_view="Vender gás"
    @teste=@pdv.testar_classe
    
  end

  def sell_credit_cell
    @action_display_controller=5
        @nome_da_view="Vender credito de celular"
  end

  def show
    @action_display_controller=5
    @nome_da_view="Show"
  end

  
end
