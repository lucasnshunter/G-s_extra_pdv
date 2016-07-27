class Cadastro
    attr_accessor :pdvid
    attr_accessor :usrname
    attr_accessor :usrcpf
    attr_accessor :usraddr
    attr_accessor :usrbairro
    attr_accessor :usrarea
    attr_accessor :usradcit
    attr_accessor :usraduf
    attr_accessor :usradcep
    attr_accessor :usrphone
    
    def gerar_novo_cadastro usuario
        servidor=Server.new
        resposta=servidor.criar_cadastro_usuario usuario
        resposta
    end
    
    def listar_usuarios_cadastrados os_pdv
        servidor=Server.new
        resposta=servidor.listar_usuarios_cadastrados os_pdv
        resposta
    end
    
    def solicitar_dados_usuario usr_id
        servidor=Server.new
        resposta=servidor.coletar_dados_usuario usr_id
        resposta
    end
    
    def solicitar_remocao_cadastro_usuario usr_id
        servidor=Server.new
        resposta=servidor.remover_cadastro_usuario usr_id
        resposta
        
    end
    
    def solicitar_atualizacao_cadastro_usuario usuario
        servidor=Server.new
        resposta=servidor.atualizar_cadastro_usuario usuario
        resposta
        
    end
end