class PdvController < ApplicationController
   skip_before_filter :verify_authenticity_token
  def dashboard
    @action_display_controller=5
    @nome_da_view="Dashboard"
    @pdv=Pdv.new
    @os_pdv=Os_pdv.new
    @saldo=@pdv.consultar_saldo_creditos_pdv @os_pdv
  end
  
  def sell_water
    @action_display_controller=5
    @nome_da_view="Vender Água"
  end

  def sell_gas
    @pdv=Pdv.new
    @action_display_controller=5
    @nome_da_view="Vender gás"
    @os_pdv=Os_pdv.new
    @pdv=Pdv.new
    @os_pdv.usrphone=params[:usrphone]
    @os_pdv.credval=params[:prod_qtd]
    @tela=@pdv.sell_gas @os_pdv
   
  end

  def sell_credit_cell
    @action_display_controller=5
    @nome_da_view="Vender credito de celular"
    
    
  end

  def show
    @action_display_controller=5
    @nome_da_view="Show"
  end

  def pagina_teste
    @os_pdv=Os_pdv.new
    @pdv=Pdv.new
    #@os_pdv = Os_pdv.new
    #@os_pdv.usrphone="82815379"
    #@os_pdv.credval="10"
    @os_pdv.usrphone=params[:usrphone]
    @os_pdv.credval=params[:prod_qtd]
    @tela=@pdv.sell_gas @os_pdv
    
  end
  
end
