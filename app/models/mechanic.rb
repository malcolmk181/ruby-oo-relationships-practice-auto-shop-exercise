class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    self.class.all << self
  end

  def cars
    Car.all.select {|car| car.mechanic == self }
  end

  def car_owners
    cars.map(&:owner).uniq
  end

  def car_owners_names
    car_owners.map(&:name)
  end

end
