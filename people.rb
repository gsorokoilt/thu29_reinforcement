class Person

  def initialize
    end

  def name(name)
    @name = name
  end
end


  def greeting(name)
  "Hi, my name is #{name}"
  end


class Student < Person

  def self.learn
    return "I get it!!"
  end
end

class Instructor < Person

  def self.teach
    return "Everything in Ruby is an Object"
  end
end



nadia = Instructor.new

p teach.nadia
