#block de uma linha
#5.times { puts "Exec the block" }

#block usado em colletions
#block de multiplas linhas, logo precisa usar o "do..end"
=begin
    #Exemplo 1 (array): 
    sum = 0
    numbers = [5,10,5]
    numbers.each  do |number|
        sum += number
        puts sum
    end
    
    #Exemplo 2 (hash):
    foo = {2=> 3, 4=> 5}
    foo.each do |key, value|
        puts "Key = #{key}"
        puts "Value = #{value}"
        puts "Key * value= #{ key * value}"
        puts '----'
    end
=end


    

#Block usado como parâmetro do método
=begin

    def foo

        # block_given?  verifica se exite um block passado como parâmetro
        if block_given?

        #call the block, o "yield" executa um bloco que foi passado como parâmetro
            yield
        else
            puts "Sem parâmetro do topo bloco"
        end
    end
    
    #A chamada do método a seguir cairá no else, pois não tem parâmetro
    foo 
    
    #As chamadas de método seguintes cairão no if, pois passam parâmetro
    foo {puts "Exec the block"}

    foo do 
        puts "Exec the block"
        puts 123
    end

=end

#Outra forma de receber o block como parâmetro é utilizar o símbolo "&"
#Lembrar que só pode passar um bloco como parâmetro

=begin

    #block que ocupa apenas uma linha como parâmetro
    def foo (name, &block)
        @name = name
        block.call
    end

    foo('Leonardo'){ puts "Hello #{@name}" }

    #block que ocupa várias linha como parâmetro

    def foo(numbers, &block)
        if block_given?
            #Esta sendo passo como parâmetro para o "each" e dentro desse block esta
            #sendo chamado outro bloco
            numbers.each do |key, value|
                block.call(key, value)
            end
        end
    end

    numbers = { 2=> 2, 3 =>3, 4=>4}

    foo(numbers) do |key, value|
        puts "#{key} * #{value} = #{key * value}"
        puts "#{key} + #{value} = #{key + value}"
        puts "---"
    end

=end
