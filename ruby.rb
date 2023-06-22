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

  def raise_error
    begin
    rescue Exception1
      puts " Error Exception1"
    end
  end

  def self.totalcount
    puts "Total number of people is #{@@count}"
  end
end

people1 = Person.new('Bao', 18)
people2 = Person.new('Duc', 30)

a = []

20.times { |i| a.push(Person.new("Person #{i + 1}", 10 + rand(81))) }
puts "Cau_7 =====>"
a.each { |element| element.introduce }

puts "Cau_8 =====>"

array8 = []
array8 = a.select { |element| element.getAge < 18 }
array8.each { |element| element.introduce }

puts "Cau 9 =====>"
array9 = a.delete_if { |element| element.getAge <= 18 }
array9.each { |element| element.introduce }

puts "Cau 10 =====>"
array10 = a.sort { |element1, element2| element1.getAge <=> element2.getAge }
array10.each { |element| element.introduce }

puts "Cau11 =====>"
array11 = a.sort { |element1, element2| element2.getAge <=> element1.getAge }
array11.each { |element| element.introduce }

puts "Cau 12 =====>"
a.delete_at(1)

puts "Cau 13 ====>"
max_age = a.max { |element1, element2| element1.getAge <=> element2.getAge }
puts max_age.introduce

puts "Cau 14 ====>"
a.each { |element| element.introduce }
puts "==========="
a.each { |element| element.setAge = (element.getAge + 1) }
a.each { |element| element.introduce }

puts "Cau 15 ======>"

puts "Cau 16 =====>"

people_2 = a
array16 = a + people_2
array16.each { |element| element.introduce }

puts "Cau 17 =====>"
a[0].raise_error





