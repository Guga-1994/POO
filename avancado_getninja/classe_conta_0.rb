class Conta
 def depositar (valor)
    puts 'Depositando a quantia de ' + valor.to_s + 'reais'
 end
end

c = Conta.new

c.depositar(100.00)

