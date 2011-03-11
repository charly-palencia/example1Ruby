#
class DogsController
  def initialize
    @dogs=[]
  end
  def add (dog)
    @dogs.push(dog)
  end
  def list
    p "entra a list"
    @dogs.each {|dog| p "Info dog:  #{dog.whoami?}"}
    @dogs
  end
end
