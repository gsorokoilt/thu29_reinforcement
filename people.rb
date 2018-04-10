class Person

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greeting
    "Hi, my name is #{@name}"
  end
end


class Student < Person

  def initialize(name)
    super(name)
  end

  def learn
    return "I get it!!"
  end
end

class Instructor < Person

  def initialize(name)
    super(name)
  end


  def teach
    return "Everything in Ruby is an Object"
  end
end

chris = Student.new("Chris")

p chris.teach

#chris.teach doesn't work as the method is only available to instances
# of the Instructor class
