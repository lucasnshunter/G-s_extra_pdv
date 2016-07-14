class UsuarioController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  
  def login

    
  end
  
  def gravar
    @usuario=Usuario.new
    @usuario.login=params[:login]
    @usuario.passwd=params[:passwd]
    @server=Server.new
    @record=@server.validar_usuario_pdv @usuario.login,@usuario.passwd
    @usuario.id=@record['_id']
    @usuario.nome=@record['uname']
    @usuario.pdv=@record['PDV']
    @usuario.classe=@record['class']
    @usuario.status=@record['STATUS']
    @pdv=@server.solicitar_informacoes_gerais_pdv @usuario.pdv
  end
  
   
end
