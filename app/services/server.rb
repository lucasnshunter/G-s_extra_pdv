class Server
     
     @record=nil
    
     def validar_usuario_pdv login,passwd
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri = URI('http://162.243.215.24/PDV/PDV_user_validate')
        res = Net::HTTP.post_form(uri,  'login' => login , 'passwd' => passwd)
       
        @record=JSON.parse(res.body)
        hash=Hash[*@record]
        hash
        


         
        
      #este metodo atende aos requisitos não funcionais :
      #R.N.F-G.E-P.D.V-1
     end
    #metodos de ofertas de serviço para o sistema de cadastro
    
    def criar_cadastro_usuario usuario 
        #pdvid,usrname,usrcpf,usraddr,usradcit,usraduf,usradcep,usrphone
        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_register_user')
        res = Net::HTTP.post_form(uri,  'pdvid' => '1', 'usrname' => usuario.usrname,
        'usrcpf' => usuario.usrcpf, 'usraddr' => usuario.usraddr,
        'usrbairro' =>usuario.usrbairro,'usrarea' =>usuario.usrarea ,'usradcit' => usuario.usradcit, 
        'usraduf' => usuario.usraduf, 'usradcep' => usuario.usradcep,'usrphone' => usuario.usrphone)
         
        @record=JSON.parse(res.body)
        hash=Hash[*@record]
        hash
      #este metodo atende aos requisitos funcionais :
      #G.E.P.D.V-7
      #implementado
    end
     
     
     
     def listar_usuarios_cadastrados pdv_id
        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_list_users')
        res = Net::HTTP.post_form(uri,  'pdvid' => "1")
        res.body
    
        #este metodo atende aos requisitos funcionais :
        #G.E.P.D.V-11
     end
     
     def coletar_dados_usuario usuario
        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_user_data')
        res = Net::HTTP.post_form(uri,  'pdvid' => '1','usrphone' => "82815379")
        res.body
    
        #este metodo atende aos requisitos funcionais :
        #G.E.P.D.V-10
     end
     
      
    
    
     
     
     
     def atualizar_cadastro_usuario
        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_atualizar_cadastro')
        res = Net::HTTP.post_form(uri,  'pdvid' => '1', 'usrname' => 'lucas nunes de sousa hunter',
        'usrcpf' => '74944681100', 'usraddr' => 'rua gr 7 quadra 11 lote 31',
        'usrbairro' =>'grande retiro','usrarea' =>'zona leste' ,'usradcit' => 'goiânia', 
        'usraduf' => 'GO', 'usradcep' => '74766050','usrphone' => '6282815379')
         res.body
      #este metodo atende aos requisitos funcionais :
      #G.E.P.D.V-7
     end
    
   
    
   
    def remover_cadastro_usuario_final

        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_generate_credit')
        res = Net::HTTP.post_form(uri,  'pdvid' => '1','usrphone' => '6282815379')
        res.body
    end
    
   
    
   
    
    
    
    def testar_conexao(cep)
        require "rubygems"
        require 'json'
        require "net/http"
        # uri ='http://162.243.215.24/PDV/describe_API'
        
        uri="https://viacep.com.br/ws/#{cep}/json/"
        resp=Net::HTTP.get_response(URI.parse(uri))
        resp.body
    end
    
    #metodos de serviço para o PDV
    def gerar_credito_usuario usrphone,pdv_id
        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_remover_cadastro')
        res = Net::HTTP.post_form(uri,  'pdvid' => '1','usrphone' => '6282815379','credval' =>10)
        res.body
        
        
        #este metodo atende aos requisitos funcionais :
        #G.E.P.D.V-1-G.E.P.D.V-2-G.E.P.D.V-3  
      end
      
      def solicitar_informacoes_gerais_pdv pdv_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_return_data')
        res = Net::HTTP.post_form(uri,  'pdvid' => pdv_id)
        @record=JSON.parse(res.body)
        hash=Hash[*@record]
        hash
     
    end
    
    def solicitar_relatorio_vendas_pdv pdvid,stdate,endate
        require "rubygems"
        require 'json'
        require "net/http"
        uri = URI('http://162.243.215.24/PDV/PDV_relatorio_vendas')
        res = Net::HTTP.post_form(uri,  'pdvid' => '1','stdate' => stdate,'endate' =>endate)
        res.body
     end
    
    
    
    
   
    
   

    

    
   
    
    

end