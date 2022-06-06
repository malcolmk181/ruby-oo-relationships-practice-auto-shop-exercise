require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vette = Car.new("Chevy", "Corvette", "antique")
beamer = Car.new("BMW", "328i", "clunker")
trash = Car.new("Nissan", "Altima", "clunker")
civic = Car.new("Honda", "JDM EF Civic", "exotic")

me = CarOwner.new("mloclam")
guy = CarOwner.new("fella")

junkie = Mechanic.new("Antonio", "clunker")
king = Mechanic.new("Richard", "exotic")
oldhead = Mechanic.new("Paul", "antique")

vette.owner = me
vette.mechanic = oldhead

beamer.owner = guy
beamer.mechanic = junkie

trash.owner = guy
trash.mechanic = junkie

civic.owner = me
civic.mechanic = king


binding.pry
