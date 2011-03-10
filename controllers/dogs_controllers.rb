#
class DogController
  def initialize 
    @dogs=[]
  end
  def add(dog)
    @dog.push(dog)
  end
  def list
    @dogs.each {|dog| p "Info dog:  #{dog.whoami?}"}
    @dogs
  end

end
