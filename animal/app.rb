#require './animal.rb' (O riquere olha o path da máquina
#e tenta procurar o path colocado)

#require_relative não leva em conta de onde esta executando
#mas sim, em relação ao arquivo que esta sendo executado
require_relative 'animal'
require_relative 'cachorro'

puts '..Animal..'
animal = Animal.new
animal.pular

puts'..Cachorro..'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir