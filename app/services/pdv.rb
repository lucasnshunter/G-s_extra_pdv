class Pdv
    def testar_classe 
        cnpj="27.865.757/0001-02"
        require "rubygems"
        require 'json'
        require "net/http"
        uri = " http://receitaws.com.br/v1/cnpj/#{cnpj}"
        resp=Net::HTTP.get_response(URI.parse(uri))
        resp.body
        
    end
    
    def sell_gas 
        teste="teste"
        teste
        
    end
    
end