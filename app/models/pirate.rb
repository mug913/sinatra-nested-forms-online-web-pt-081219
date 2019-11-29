class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(name,weight,height)
    @name = name
    @weight = weight
<<<<<<< HEAD
    @height = height
=======
    @heignt = height
>>>>>>> 2d9bd3420d8a5aca1963d2d64b916d26f59ca535
    @@all << self
  end

  def self.all
    @@all
  end

end
