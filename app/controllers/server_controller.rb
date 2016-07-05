class ServerController < ApplicationController
  def pagina_teste
    @server = Server.new
  end
end
