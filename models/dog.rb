#test class dog
class Dog <  Mammal
  attr_accessor :race, :name
  def initialize (aName,aRace,aWeight,aBirth,aLarge)
    super
    @name = aName
    @race = aRace
    @weight = aWeight
    @birth = aBirth
    @large = aLarge
  end
  
  #ask qho are you
  def whoami?
    "My name is #{@name} my race is #{@race} "
  end
  

end

