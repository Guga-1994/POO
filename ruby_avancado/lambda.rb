=begin
    O lambda é tipo um block que pode ser salva dentro de uma variável, ja os blocks
    não podem ser salvas em variaveis, apenas passadas como parâmetro como em métodos,
    colletions (each), ou comandos de repetição como o times. O lambda é um tipo especial
    de procsi, ele retorna um objeto de procsi.
=end

#declarar um lambda
=begin
    #first_lambda = lambda {puts "my first lambda"}

    #outra forma de criar o lambda
    first_lambda = -> {puts "my first lambda"}
    first_lambda.call
=end

#parâmetros no lambda
=begin
first_lambda = -> (names){names.each {|name| puts name}}
names = ["JOAO", "Mario", "Pedro"]

first_lambda.call(names)
=end

#Em lambdas que ocupam várias linhas, não declare o lambda abreviada "->" e deve usar o do..end
=begin
my_lambda = lambda do |numbers|
    index = 0
    puts 'Número atual + Próximo número'
    numbers.each do |number|
        return if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
        puts numbers[index] + numbers[index + 1]
        index +=1
    end
end

numbers =[1,2,3,4]
my_lambda.call(numbers)
=end

#diferente de block, você pode passar mais de uma lambda como argumento de um método
=begin
def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end

first_lambda = lambda {puts 'my firt lambda'}
second_lambda = lambda {puts 'my second lambda'}

foo(first_lambda,second_lambda) 
=end