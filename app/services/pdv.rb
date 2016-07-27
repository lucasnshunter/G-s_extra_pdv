class Pdv
    
    
    def testar_classe 
        teste="testeando conexão da classe"
        teste
        
    end
    
    def sell_gas os_pdv
        servidor=Server.new
        resposta=servidor.gerar_credito_gas os_pdv
        resposta
    end
    
    def consultar_status_pdv os_pdv
        servidor=Server.new
        resposta=servidor.verificar_status_pdv os_pdv
        resposta
    end 
    
    def consultar_saldo_creditos_pdv os_pdv
        servidor=Server.new
        resposta=servidor.solicitar_saldo_creditos_pdv os_pdv
        resposta
    end
    
    def consultar_relatorio_vendas os_pdv
        servidor=Server.new
        resposta=servidor.solicitar_relatorio_vendas_pdv os_pdv
        resposta
    end
    
    
    
end