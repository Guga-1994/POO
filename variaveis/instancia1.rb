class User
    def add(name)
        @name = name
        puts "User adicionado"
        hello
    end

    def hello
        #quando vai printar o valor de uma variavel usando o puts ou 
        #print tem que usar aspas duplas "", senão dá erro
        puts "Seja bem vindo, #{@name} "
    end
end

user = User.new
user.add('Joao')

user2= User.new
user.add('Maria')