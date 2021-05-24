def foo
    local='local é acessada apenas dentro deste método'
    print local
end
foo
=begin
#O comando a seguir dará erro porque a variável local
só existe dentro do metodo foo, demodo que não poder ser 
acessada de fora.
=end
#puts local

#Nesse caso foi criado outra variável de nome "local" que pode
#ser acessado e modificada, pois foi criado fora do método
local = 123
puts local