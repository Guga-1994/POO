require_relative 'produto'
require_relative 'mercado'


produto = Produto.new
produto.nome = 'papel'
produto.preco = '5,50'

=begin
#1° opção
mercado = Mercado.new(produto.nome,produto.preco)
mercado.comprar
#2° opção
mercado= Mercado.new(produto.nome,produto.preco).comprar
#3°opção
Mercado.new(produto.nome,produto.preco).comprar
=end
