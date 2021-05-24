class Animal
    def pular
        puts 'Toing! Toing! Toing!'
    end 

    def dormir
        puts 'ZzZzzzz'
    end

end

class Cachorro < Animal
    def latir
        puts 'Au Au'
    end
end

class Gato < Animal
    def miar
        puts    'meow'
    end
end

=begin
cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir 
=end

gato = Gato.new
gato.pular
gato.dormir
gato.miar
