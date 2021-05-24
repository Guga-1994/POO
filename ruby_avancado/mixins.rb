module ImpressaoDecorada
    def imprimir text 
        #voce pode multipliar uma string por um inteiro e a string
        #será repitida no valor do numero inteiro.
        decoracao = '#' * 50
        puts decoracao
        puts text
        puts decoracao
    end
end

module Pernas
    #o include possibilidade utilizar os métodos de um modulo em outro, no caso o modulo Pernas
    #pode acessar os metodos do modulo ImpressaoDecorada
    include ImpressaoDecorada

    def chute_frontal
        imprimir 'Chute Frontal'
    end

    def chute_lateral
        imprimir 'chute lateral'
    end
end

module Bracos

    include ImpressaoDecorada

    def jab_de_direita
        imprimir 'Jab de direita'
    end

    def jab_de_esquerda
        imprimir 'Jab de esquerda'
    end

    def gancho
        imprimir 'Gancho'
    end
end

class LutadorX
    include Pernas
    include Bracos
end

class LutadorY
    include Pernas
end

lutadorx= LutadorX.new
lutadorx.chute_frontal
lutadorx.jab_de_direita

lutadory= LutadorY.new
lutadory.chute_lateral