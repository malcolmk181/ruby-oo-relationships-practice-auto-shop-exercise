class CarOwner

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def cars
    Car.all.select {|car| car.owner == self }
  end

  def mechanics
    cars.map(&:mechanic)
  end

  def self.average_number_of_cars
    all.reduce(0) {|sum, owner| sum + owner.cars.count } / all.count.to_f
  end

end
