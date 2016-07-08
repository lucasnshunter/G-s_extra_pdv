class PdvController < ApplicationController
  def dashboard
    @pdv=Pdv.new
    @nome_da_view="Dashboard"
    
  end
  
  def sell_water
        @nome_da_view="Vender Água"
  end

  def sell_gas
        @nome_da_view="Vender gás"
  end

  def sell_credit_cell
        @nome_da_view="Vender credito de celular"
  end

  def show
        @nome_da_view="Show"
  end

  
end
