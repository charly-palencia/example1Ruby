#test class dog
class Dog <  Mammal
  attr_accessor :race
  def initialize(aName,aRace,aWeight,aBirth,alarge)
    super
    @name=aName
    @race=aRace
    @weight= aWeight
    @birth=aBirth
    @large=aLarge 
  end
  def initialize
  end
  #ask qho are you
  def whoami?
    "My name is #{@name} my race is #{@race} "
  end
  

end

