class Conta
  attr_accessor :saldo, :nome

  #o metodo initialize funciona como um construtor, dessa forma
  #toda vez que um objeto for criado será rodado esse médoto junto,
  #ele tem a função de preparar o objeto para se manipulado
  #geralmente iniciando variáveis de instancia e métodos
  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def depositar(valor)
    #recurso do ruby para invocar um outro objeto dentro da própria classe
    #seja método ou atributos
    self.saldo += valor
    puts "Depositando a quantidade de #{valor} reais na conta de #{self.nome}"
    #puts "Depositando a quantidade de " + valor.to_s + " reais"
  end
end

conta = Conta.new("Maria")
conta.depositar(500.00)
conta.depositar (10.00)
puts conta.saldo
puts conta.nome

conta1 = Conta.new("Pedro")
conta1.depositar(200.00)
conta1.depositar (100.00)
conta1.depositar(50.0)
puts conta1.saldo
puts conta1.nome
