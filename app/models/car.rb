class Car

  attr_reader :make, :model
  attr_accessor :owner, :mechanic, :classification

  @@all = []

  def self.all
    @@all
  end

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification

    self.class.all << self
  end

  def self.classifications
    all.map(&:classification).uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select {|mechanic| mechanic.specialty == classification }
  end

end
