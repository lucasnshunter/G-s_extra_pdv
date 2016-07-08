class ServerController < ApplicationController
  def pagina_teste
    @nome_da_view="Testando servidor externo"
    @server = Server.new
  end
end
