class Person
  #   Constructor
  @@count = 0

  def initialize (name, age)
    @@count += 1
    @name = name
    @age = age
  end

  # Getter
  def getName
    @name
  end

  def getAge
    @age
  end

  #   Setter
  def setName=(name)
    @name = name
  end

  def setAge=(age)
    @age = age
  end

  def introduce
    puts "My name is #{@name}. I'm #{@age} years old"
  end

  def self.totalcount
    puts "Total number of people is #{@@count}"
  end
end

people1 = Person.new('Bao', '18')
people2 = Person.new('Duc', '30')

puts Person.totalcount



