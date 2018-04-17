class System

  def initialize
    @bodies = []
  end

  def add(body_name,mass)
  body = {:body_name => body_name, :mass => mass}
  @bodies.push(body)

  end


  def total_mass

    initial_mass = 0
    @bodies.each do |body_hash|
      initial_mass += body_hash[:mass]
  end

  return initial_mass

end

class Body
  def initialize(name,mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body

  def initialize(day,year)
    super(name,mass)
    @day = day
    @year = year
  end
end

class Star  <  Body
  def initialize(name,mass,type)
    super(name,mass)
    @type = type
  end
end

class Moon  <  Body

  def initialize(name,mass,month,planet)
    super(name,mass)
    @month = month
    @planet= planet
  end
end

solar = System.new

solar.add("earth",1)
solar.add("mars", 1)
solar.add("jupiter",318)

p solar.total_mass

end
