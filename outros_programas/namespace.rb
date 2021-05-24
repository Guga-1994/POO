#Serve como um contairner para agrupar objetos relacionados
#(classes, constantes, métodos ou outros modulos)
#para declarar é so colocar o nome "module" e em seguida um nome com letra
#maiuscula
=begin
    module ReverseWorld
        #o self aqui está indicando que o método pertence ao módulo
        def self.puts text
            # o comando rever.to_s como já percebido, inverte uma string
            print text.reverse.to_s
        end
    end
=end

#na linha seguinte esta sendo chamado o método puts, porem
#ele já é uma classe no ruby, e para evitar sobrescreve-la foi
#colocada dentro do modulo. Por isso para chama-lo tem que colocar
#"nome_modulo::", logo ele esta dentro de um namespace que é um espaço
#de nomes que não causa conflitos com os nomes reservados pelo ruby

#ReverseWorld::puts 'O resultado é'

module ReverseWorld
    def self.puts text
        print text.reverse.to_s
    end
    
    # pode-se criar uma classe dentro do modulo e usa-la
    #normalmente
    class Imprimir
        def call text
            print text
            print '---Imprimir---'
        end
    end
end

#cria uma instancia da classe dentro do modulo
imprimir = ReverseWorld::Imprimir.new
 imprimir.call 'O resultado é '