=begin
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    self.name = name
    self.age = age
  end

  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{name}"
    puts "Idade = #{age} "
  end
end

person = Person.new("Joao", 12)
person.check
=end

#ou

class Person
  def initialize(nome, age)
    @name = nome
    @age = age
  end

  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Idade = #{@age} "
  end
end

person = Person.new("Joao", 12)
person.check
