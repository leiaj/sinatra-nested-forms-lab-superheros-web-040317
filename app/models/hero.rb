class Hero
  attr_accessor :name, :power, :bio
  ALL = []

  def initialize(name:, power:, bio:)
    @name = name
    @power = power
    @bio = bio
    ALL << self
  end

  def self.all
    ALL
  end

end
