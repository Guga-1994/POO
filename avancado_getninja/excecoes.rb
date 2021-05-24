=begin
#As exceções do ruby funcionam como o try catch do
#java ou c#
begin
  #Devo tentar alguma coisa
  file = File.open("./ola")
  if file
    puts file.read
  end
rescue Exception => e
  #obter um possivel erro
  puts e.message
  puts e.backtrace
end
=end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts e.message
  puts "Deu um erro ao tentar executar a soma "
end

soma(10, "5")
