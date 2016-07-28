class Campanha
    attr_accessor :titulo
    attr_accessor :data
    attr_accessor :conteudo
    attr_accessor :alcance
    
   
    def testar_classe
        teste="a classe campanha esta funcionando"
        teste
    end
    def criar_campanha campanha
    servidor=Server.new
    resp=servidor.criar_campanha campanha
    resp
    end
end