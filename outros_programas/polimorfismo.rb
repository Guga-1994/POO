class   Instrumento
    def escrever
        puts 'Escrevendo'
    end
end

class Teclado < Instrumento
end

=begin
A classe Lapis esta herdando da classe Instrumento porém
tem um metodo identico ao da classe pai, logo o metodo que rodará
será a da classe filha, no caso o método de lápis. O método do pai foi
sobrescrevido pela propriedade do polimorfismo.
=end
class Lapis < Instrumento
    def escrever
        puts 'Escrevendo à lapis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo à caneta'
    end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts "lapis",
lapis.escrever

puts "caneta"
caneta.escrever

puts "teclado"
teclado.escrever
