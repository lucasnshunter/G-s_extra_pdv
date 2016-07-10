class ServerController < ApplicationController
  def pagina_teste
    @action_display_controller=8
    @nome_da_view="Testando servidor externo"
    @server = Server.new
  end
end
