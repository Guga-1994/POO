class Esportista
    def competir
        puts "Participando de uma competição"
    end

    def competicao
        puts "Partiu competicao"
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts "Correndo atrás da bola"
    end
    def competicao
        puts "Partiu competicao da copa do mundo"
    end
end

class Maratonista < Esportista
    def correr 
        puts "Percorrento o circuito"
        
    end
    def competicao
       # puts "Partiu competicao na olimpiada"
        super #super classe, herda do método competicao da classe pai Esportista
    end
end

play_foot = JogadorDeFutebol.new
play_foot.competir
play_foot.correr
play_foot.competicao

maratonista = Maratonista.new
maratonista.competir
maratonista.correr
maratonista.competicao