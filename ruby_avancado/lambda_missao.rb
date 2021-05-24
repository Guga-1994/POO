=begin
O ruby ofere um método chamado de capitalize para
tornar a primeira letra de uma string maiúsula.
Sabendo disso crie uma lambda que recebe um nome como
parâmetro e o imprie com a primeira letra maiuscula. 
Esta lambda deverá ser selva dentro de uma variável que
será passada como argumento de um método chamado capitalize_name
Dentro do método você chamará a lambda duas vezes, passando
como parâmetro em cada um delas um nome diferente
=end

def capitalize_name(lambda_capitalize)
    lambda_capitalize.call('leonardo')
    lambda_capitalize.call('josé')
end

lambda_capitalize = -> (name){puts nome.capitalize}
capitalize_name(lambda_capitalize)